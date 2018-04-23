hd([X|_],X).
hdoftl([_|[B|_]],B).


checking(L) :- 
    length(L,_len),
    (_len < 3 ->
        hd(L,_head),
        true
    ; false).  