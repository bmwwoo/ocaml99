(* 99 problems in OCaml *)

(* Write a function last : 'a list -> 'a option that returns the last element of
 * a list *)

let rec last x = match x with
  | [] -> None
  | a :: b -> if b = []
              then Some a
              else last b
;;

(* Find the last but one (last and penultimate) elements of a list. *)

let rec last_two = function
  | [] -> None
  | [_] -> None
  | [a;b] -> Some (a, b)
  | _ :: b -> last_two b
;;

(* Find the k'th element of a list.  I do it 0 based. *)

let rec at k list = match list with
  | [] -> None
  | a :: b -> if k = 0
              then Some a
              else at (k - 1) b
;;

(* Find the nubmer of elements of a list. *)

let rec length_help list n = match list with
  | [] -> n
  | _ :: b -> length_help b (n + 1)
;;

let length list = 
  length_help list 0
;; 
