module Main

index : Fin n -> Vect n a -> a
index fZ     (x :: xs) = x
index (fS k) (x :: xs) = Main.index k xs

-- Long-handed declaration of `index` above.
index2 : {n:Nat} -> {a:Type} -> (i:Fin n) -> (xs:Vect n a) -> a
index2 fZ     (x :: xs) = x
index2 (fS k) (x :: xs) = index2 k xs

as : Vect 4 Integer
as = [1,2,3,4]

main : IO ()
main = do
  putStrLn $ show $ Main.index 0 as
  putStrLn $ show $ Main.index 1 as
  putStrLn $ show $ Main.index 2 as
  putStrLn $ show $ Main.index 3 as
