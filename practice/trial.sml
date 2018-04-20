datatype task = t of string*int*int
(*datatype 'a tasklist = nil | tlist of task*'a tasklist*)

(* To compare an element whether they are same or not *)
fun compare 0 0 = true
    | compare x y = x = y

val tuple1 = ("t1",3,5);
val tuple2 = ("t2",4,6);
val tasklist = [tuple1,tuple2];



fun numgen 0 = 0
    | numgen n = 2*n

fun test (t(a,b,c)) = 1
    

  


fun say what = what;

