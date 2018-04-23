hd([X|_],X).
hdoftl([_|[B|_]],B).


natural(0).
natural(s(X)) :- natural(X).

add(0, X, X).
add(s(N), X, s(Y)) :- add(N, X, Y).

numeral(0).
 
numeral(succ(X)) :- numeral(X).


checking(L) :- 
    length(L,_len),
    (_len < 3 ->
        hd(L,_head),
        true
    ; false).  