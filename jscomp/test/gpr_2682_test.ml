(* let for_each n =
  ([%raw{|
	for (var key in n){
      console.log(key)
    }
  |}] : unit ); () *)



let forEach = fun%raw a b -> {| 
  return a + b
|}