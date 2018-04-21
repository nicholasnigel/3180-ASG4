/* Insert header here */

task(t1, 2, 4).
task(t2, 4, 6).
task(t3, 3, 7).
task(t4, 8, 9).
task(t5, 1, 10).
task(t6, 10, 1).



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
%compatible_list()
/* example query: compatible_list([t1, t2, t3]);   
   result: no */

