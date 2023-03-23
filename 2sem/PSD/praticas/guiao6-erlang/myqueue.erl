-module(myqueue).
-export([create/0, enqueue/2, dequeue/1, reverse/1, test/0, create2/0, enqueue2/2, dequeue2/1]).

create() -> [].

%% adiciona um dado item
enqueue(Queue, Item) ->
    case Queue of
        [] -> [Item];
        [H|T] -> [H] ++ enqueue(T, Item)
    end.

%% faz pop do 1 elemento
dequeue(Queue) ->
    case Queue of
        [] -> empty;
        [H|T] -> {T, H}
    end.

reverse(List) ->
    case List of
        [] -> [];
        [H|T] -> reverse(T) ++ [H]
    end.

test()->
    Q1 = create(),
    Q2 = enqueue(Q1,1),
    Q3 = enqueue(Q2,10),
    {Q4, 1} = dequeue(Q3),
    {Q5, 10} = dequeue(Q4),
    empty = dequeue(Q5),
    ok.



%% VERSAO 2

%% a ideia é termos duas lista,
%% na primeira vamos sempre adicionar
%% quando formos dar ddrop, vamos a segunda fila
%% no caso de esta estar vazia, damos reverse da 1
create2() -> {[],[]}.

%% adiciona um dado item
enqueue2({L,R}, Item) -> {[Item|L], R}.


%% faz pop do 1 elemento
dequeue2({L,R}) ->
    case R of
        [] when L == [] -> empty;
        [] -> [H|T] = reverse(L),
              {H, {[],T}};
        [Item|T] -> {Item ,{L, T}}
    end.
