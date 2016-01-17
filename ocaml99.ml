(* 99 problems in OCaml *)

(* Write a function last : 'a list -> 'a option that returns the last element of
 * a list *)

let rec last x = match x with
  | [] -> None
  | a :: b -> if b = []
              then Some a
              else last b
;;

