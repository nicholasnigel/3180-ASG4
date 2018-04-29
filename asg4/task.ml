(* *)
(* CSCI3180 Principles of Programming Languages *)
(* *)
(*  --- Declaration ---*)
(* *)
(*  I declare that the assignment here submitted is original except for source *)
(*  material explicitly acknowledged. I also acknowledge that I am aware of *)
(*  University policy and regulations on honesty in academic work, and of the *)
(*  disciplinary guidelines and procedures applicable to breaches of such policy *)
(*  and regulations, as contained in the website *)
(*  http://www.cuhk.edu.hk/policy/academichonesty/ *)
(* *)
(*  Assignment 4 *)	
(*  Name : Nigel Nicholas *)
(*  Student ID : 1155088791 *)
(*  Email Addr : 1155088791@link.cuhk.edu.hk *)


(*                      List.nth( list, num) 
    to access numth element of the list, starting with 0           *)
    val tasks = [
        ("t1", 2, 4),
        ("t2", 4, 6),
        ("t3", 3, 7),
        ("t4", 8, 9),
        ("t5", 1, 10),
        ("t6", 10, 1)
      ];


(*1(a)*)
(* check_task(T:string, tasklist:(string*int*int)list):bool *)
(* Recursively check from head to the head of tail whether the string matches or not *)
fun check_task(T :string, tasklist :(string*int*int)list):bool =
    
      if null tasklist then false    
        else
      let val task = hd(tasklist)
           val name = #1 task
           val startTime = #2 task
           val endTime = #3 task
      in (
        if T = name andalso startTime<=endTime then true
        else check_task(T, tl(tasklist)) 
        
        )
        

      end

(* For the purpose of returning a task  *)
fun find_task(T:string, tasklist:(string*int*int)list):(string*int*int) =
        
      let val task = hd(tasklist)
           val name = #1 task
           val startTime = #2 task
           val endTime = #3 task
      in (
        if T = name andalso startTime<endTime then task
        else find_task(T, tl(tasklist)) 
        )
        

      end


(* 1(b) *)
fun compatible(T1: string, T2: string, tasklist:(string*int*int)list):bool =
    (* check whether T1 and T2 exist, if not return false immediately, else find this 2 task *)
    if check_task(T1,tasklist) = true andalso check_task(T2,tasklist) = true then 
        let
            val task1 = find_task(T1, tasklist)
            val task2 = find_task(T2, tasklist)
            val startTime_task1 = #2 task1
            val endTime_task1 = #3 task1
            val startTime_task2 = #2 task2
            val endTime_task2 = #3 task2
        in (
            if startTime_task1 <= startTime_task2 andalso endTime_task1<=startTime_task2 then true
            else if startTime_task2 <= startTime_task1 andalso endTime_task2<=startTime_task1 then true
            else false

        )

        end
    
    else false ;


(* Check whether each task in the task list is compatible with all other task, *)
(* in imperative programming, it should be implemented with 2 for loop for i=0 ;i<n-1;i++ and for j=i+1;j<n;j++ *)

(* 1(c) *)
fun compatible_list(L: string list, tasklist: (string*int*int) list):bool =

    if null L then true
     else
    let 
        val remaining = tl L
        val head = hd L


        (* compare stable and tail *)
        (* stable is the element that does not move while doing inner loop. Used to compare this element with the next of the list *)
        fun compare(stable: string, tail: string list, tasklist: (string*int*int) list):bool = 
            if null tail then true
            else if compatible(stable, hd tail, tasklist) = true then compare(stable, tl tail, tasklist)
            else false
    
    in (
        if compare(head,remaining,tasklist) = false then false
        else compatible_list(remaining, tasklist)
    
    )
    end


  
