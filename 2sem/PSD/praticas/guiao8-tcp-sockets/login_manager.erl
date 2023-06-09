-module(login_manager).
-export([start/0,
         create_account/2,
         close_account/1,
         login/2,
         logout/1,
         online/0
        ]).


start() ->
    register(?MODULE, spawn(fun() -> loop(#{}) end)).


rpc(Req)->
    ?MODULE ! {Req, self()},
    receive {Res, ?MODULE} -> Res end.

create_account(User, Pass) -> rpc({create_account, User, Pass}).
close_account(User) -> rpc({close_account, User}).
login(User,Pass) -> rpc({login, User,Pass}).
logout(User) -> rpc({logout, User}).
online() -> rpc({online}).

loop(Map) ->
   receive
       {{create_account, User,Pass}, From} ->
           case maps:find(User, Map) of
               error ->
                   From ! {ok, ?MODULE},
                   loop(maps:put(User, {Pass, true}, Map));
               _ ->
                   From ! {user_exists, ?MODULE},
                   loop(Map)
           end;
        {{close_account, Username, Passwd}, From} ->
            case maps:find(Username, Map) of
                {ok, {Passwd,_}} ->
                    From ! {ok, ?MODULE},
                    loop(maps:remove(Username,Map));
                _ ->
                    From ! {invalid,?MODULE},
                    loop(Map)
            end;
        {{login, Username, Passwd}, From} ->
            case maps:find(Username, Map) of
                {ok, {Passwd, false}} ->
                    From ! {ok, ?MODULE},
                    loop(maps:update(Username,{Passwd,true}, Map));
                _ -> From ! {invalid, ?MODULE}
            end;
        {{logout, Username, Passwd}, From} ->
            case maps:find(Username, Map) of
                {ok, {Passwd, true}} ->
                    From ! {ok, ?MODULE},
                    loop(maps:update(Username,{Passwd,false}, Map));
                _ -> From ! {invalid, ?MODULE}
            end;
        {{online}, From} ->
            % primeira maneira - List = maps:keys(maps:filter(fun(_,{_,IsLoggedIn}) -> IsLoggedIn end, Map)),
            % segunda maneira - List = [User || {User, {_, true}} <- maps:to_list(Map) ],
            List = maps:fold(fun(User,{_,IsLoggedIn},Acc) when IsLoggedIn -> [User|Acc];  (_,_,Acc) -> Acc end,[], Map),
            From ! {List,?MODULE}, loop(Map)
    end.
