/* Insert header here */

/* 1a */
uint_num(0).
uint_num(s(X)):- unit_num(X).

/* 1b */

gt(s(_),0). %base case that mentions that, any successor number should be greater than 0.
gt(s(X),s(Y)) :- gt(X,Y).   %reduce them equally until one of them should match the above format.

/* 1c */
/* Your query */
/* gt(s(s(s(0)))),X). */           

add(0, X, X).
add(s(N), X, s(Y)) :- add(N, X, Y).

/* 1d */


product(0,X,0).
product(X,0,0).

product(s(X),Y,Z) :- add(_sum,Y,Z),
                     product(X,Y,_sum).

/* 1e */
/* Your query */
/* product(s(s(0)),s(s(s(0))), Product). */


/* 1f */
/* Your query */
/* product(Result,4,8). */

/* 2a */
nth(X,[X|_],1).

nth(X,[_|T],N) :-  nth(X,T,N1), N is N1 + 1.

    


/* 2b */
third(X,L) :- nth(X,L,3).

