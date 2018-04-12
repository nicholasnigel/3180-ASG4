datatype task = t of string*int*int
(*datatype 'a tasklist = nil | tlist of task*'a tasklist*)

(* To compare an element whether they are same or not *)
fun compare 0 0 = true
    | compare x y = x = y

val tuple1 = ("t1",3,5);
val tuple2 = ("t2",4,6);

fun getString (name:string, startTime:int, endTime:int) = name

fun getStartTime (name:string, startTime:int, endTime:int) = startTime

fun getEndTime (name:string, startTime:int, endTime:int) = endTime

fun numgen 0 = 0
    | numgen n = 2*n