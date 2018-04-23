hd([X|_],X).
hdoftl([_|[B|_]],B).


nth(X,[X|_],1).
nth(X,[Hd|T],N) :- N is N-1.
                    nth(X,T,N).