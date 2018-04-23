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
product(s(0),Y,Y).
%product(s(X),Y,Z):-product(X,add(Y,Y,Sum),Z).
product(s(X),Y,Z) :- add(Y,Y,_sum),
                     product(X,_sum,Z).

/* 1e */
/* Your query */
/* product(s(s(0)),s(s(s(0))), Product). */


/* 1f */
/* Your query */
/* product(Result,4,8). */

/* 2a */
%nth()

/* 2b */
%third()

