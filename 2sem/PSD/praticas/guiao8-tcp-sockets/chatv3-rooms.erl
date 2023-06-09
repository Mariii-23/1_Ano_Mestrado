-module('chatv3-rooms').
-export([start_server/1]).

start_server(Port) ->
  {ok, LSock} = gen_tcp:listen(Port, [binary, {active, once}, {packet, line},
                                      {reuseaddr, true}]),
  RoomManager = spawn(fun()-> room_Manager(#{}) end),
  spawn(fun() -> acceptor(LSock, RoomManager) end),
  ok.


acceptor(LSock, RoomManager) ->
  {ok, Sock} = gen_tcp:accept(LSock),
  spawn(fun() -> acceptor(LSock, RoomManager) end),
  RoomManager ! {enter, self()},
  user(Sock, RoomManager).

room_Manager(Rooms) ->
  receive
    {leave, Pid} -> io:format("user left~n", []),
      room_Manager(Rooms)
  end.

room(Pids) ->
  receive
    {enter, Pid} ->
      io:format("user entered~n", []),
      room([Pid | Pids]);
    {line, Data} = Msg ->
      io:format("received ~p~n", [Data]),
      [Pid ! Msg || Pid <- Pids],
      room(Pids);
    {leave, Pid} ->
      io:format("user left~n", []),
      room(Pids -- [Pid])
  end.

user(Sock, Room) ->
  Self = self(),
  receive
    {line, {Self, Data}} ->
      inet:setopts(Sock, [{active, once}]),
      gen_tcp:send(Sock, Data),
      user(Sock, Room);
    {line, {_, Data}} ->
      gen_tcp:send(Sock, Data),
      user(Sock, Room);
    {tcp, _, Data} ->
      Room ! {line, {Self, Data}},
      user(Sock, Room);
    {tcp_closed, _} ->
      Room ! {leave, self()};
    {tcp_error, _, _} ->
      Room ! {leave, self()}
  end.
