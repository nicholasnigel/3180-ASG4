/* Insert header here */

%
% CSCI3180 Principles of Programming Languages
% 
%  --- Declaration ---
% 
%  I declare that the assignment here submitted is original except for source
%  material explicitly acknowledged. I also acknowledge that I am aware of
%  University policy and regulations on honesty in academic work, and of the
%  disciplinary guidelines and procedures applicable to breaches of such policy
%  and regulations, as contained in the website
%  http://www.cuhk.edu.hk/policy/academichonesty/
% 
%  Assignment 4	
%  Name : Nigel Nicholas    
%  Student ID : 1155088791
%  Email Addr : nigel7@cse.cuhk.edu.hk


task(t1, 2, 4).
task(t2, 4, 6).
task(t3, 3, 7).
task(t4, 8, 9).
task(t5, 1, 10).
task(t6, 10, 1).

hd([X|_],X).
hdoftl([_|[X|_]],X).
tl([_|X],X).
list_empty([], true).
list_empty([_|_], false).

notoverlap(T1,T2):-
    task(T1,_start1,_end1),
    task(T2,_start2,_end2),
    _end1 =< _start2.

/* 1a */
check_task(T):-
    task(T,_start,_end),
    _start<_end.
/* example query: check_task(t1); 
   result: yes */

/* 1b */
compatible(T1,T2):-
/* example query: compatible(t1, t2); 
   result: yes */
    check_task(T1),
    check_task(T2), 
    (notoverlap(T1,T2);notoverlap(T2,T1)).
    

/* 1c */
compatible_list(L):-
/* example query: compatible_list([t1, t2, t3]);   
   result: no */

   /* Algorithm: 
        check compatibility with one another,
        if length of the remaining tail is 0 just return true
        else if not , you have to do the recursive function of list  */
    
    length(L, _len),
    (_len>0 ->
        hd(L,_head),    
        tl(L,_tail),    
        compat(_head,_tail),
        compatible_list(_tail),
        true
    ; true 
    ).

    


compat(Head, L):-
/* compat is to check a stable card with the remaining of the list  */
    length(L,_len),
    ( _len > 0 ->
        hd(L,_header),
        tl(L,_ending),
        compatible(Head,_header),
        compat(Head,_ending),
        true
    ; true).
