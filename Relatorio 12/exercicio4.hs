data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)


data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor   :: Double
  , etapa   :: Etapa
  }

descrever :: Atendimento -> String
descrever a = cliente a ++ " - " ++ servico a ++ " - " ++ show (etapa a)

concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

-- soma dos atendimentos concluidos
arrecadado :: [Atendimento] -> Double
arrecadado atendimentos =
  sum (map valor (filter (\a -> etapa a == Concluido) atendimentos))

-- Main
main :: IO ()
main = do
  let boh = Atendimento "Boh" "Banho de ervas" 80.0 NaFila
      espiritoRio  = Atendimento "Espirito do Rio" "Banho de lama" 40.0 NoBanho
      semRosto     = Atendimento "Sem-Rosto" "Banho quente" 60.0 NaFila

  let original = [boh, espiritoRio, semRosto]
  let atualizada = [concluir boh, concluir espiritoRio, semRosto]

  putStrLn "--- Lista original ---"
  mapM_ putStrLn (map descrever original)
  putStrLn ("Arrecadado: " ++ show (arrecadado original))

  putStrLn "--- Lista atualizada ---"
  mapM_ putStrLn (map descrever atualizada)
  putStrLn ("Arrecadado: " ++ show (arrecadado atualizada))
