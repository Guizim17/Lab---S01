pesoMaximo :: Double
pesoMaximo = 5.0
-- pesoMaximo = 10.0

data Encomenda = Encomenda
  { destinatario :: String
  , peso         :: Double
  , frete        :: Double
  }

descrever :: Encomenda -> String
descrever e =
  destinatario e ++ " - " ++ show (peso e) ++ " kg - frete: " ++ show (frete e)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas = filter (\e -> peso e <= pesoMaximo) encomendas

totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas = sum (map frete encomendas)

-- Main
main :: IO ()
main = do
  let encomendas =
        [ Encomenda "Padaria da Osono" 2.5 15.0
        , Encomenda "Senhora do bolo de arenque" 4.0 20.0
        , Encomenda "Tombo" 7.5 30.0
        , Encomenda "Relojoeiro da torre" 12.0 45.0
        , Encomenda "Ursula" 1.0 10.0
        ]
  let cabem = cabemNaVassoura encomendas

  putStrLn "--- Todas as encomendas ---"
  mapM_ putStrLn (map descrever encomendas)
  putStrLn "--- Cabem na vassoura ---"
  mapM_ putStrLn (map descrever cabem)
  putStrLn ("Total de fretes: " ++ show (totalDeFretes cabem))
