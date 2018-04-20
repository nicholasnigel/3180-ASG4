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
(*  Name : Jonathan Leonanda *)
(*  Student ID : 1155072452 *)
(*  Email Addr : leonand6@cse.cuhk.edu.hk *)

(* functional programming *)


datatype 'a bTree = nil | bt of 'a bTree * 'a * 'a bTree;

(*1 (a)*)
fun size (nil) = 0
  | size (bt (left, x, right)) = (size(left) + 1 + size(right));

(*1 (b)*) 
fun height (nil)= 0 
  | height (bt(nil,a,nil))= 0
  | height ( bt (left, x, right)) = 1 + Int.max(height(left), height(right));	

(*1 (c)*)
fun nleaves (nil) = 0
  | nleaves (bt (nil, x, nil)) = 1 
  | nleaves (bt (left, x, right)) = (nleaves(left) + nleaves(right));
  
  
(*2 (a)*)
fun last (h::[]):real = h
  | last (h::t):real = last(t);

(*2 (b)*)
fun tln (h::t, 0) = h::t
  | tln ([], 0) = []
  | tln (h::t, n) = tln(t, n-1);

(*2 (c)*)
fun hdn (h::t, 0) = []
  | hdn ([], 0) = []
  | hdn (h::t, n) = h::hdn(t, n-1);
  
(*2 (d)*)  
fun lnth (h::t, n) = hd(tln(h::t, n-1));

(* 2 (e)*)
fun sum(h::[]):real = h
  | sum(h::t):real = h+sum(t); 
  
(* 2 (f)*)
fun square(x:real) = x*x; 
fun variance(h::t) = (sum(map square(h::t)) / real(length(h::t))) - square(sum(h::t) / real(length(h::t)));

  
  
  