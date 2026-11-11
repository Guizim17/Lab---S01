data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ "| Preço: " ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise        = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido comLeite (Cafe _ preco _) =
  if comLeite
    then preco + 2.0
    else preco

-- Main
main :: IO ()
main = do
  let macchiato   = Cafe   "Macchiato" 12.0 6
      espresso    = Cafe "espresso"    10.5 9
      mocha       = Cafe "Mocha Suave" 9.0  3

  putStrLn (descrever macchiato)
  putStrLn ("Intensidade: " ++ forca macchiato)
  putStrLn (descrever espresso)
  putStrLn ("Intensidade: " ++ forca espresso)
  putStrLn (descrever mocha)
  putStrLn ("Intensidade: " ++ forca mocha)

  print (precoDoPedido True espresso)   -- com leite
  print (precoDoPedido False espresso)  -- sem leite
