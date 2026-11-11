data Esboco = Esboco
  { titulo  :: String
  , tecnica :: String
  , horas   :: Int
  }

-- Esboço mais recente
esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente []    = "O caderno esta vazio."
esbocoMaisRecente (e:_) = titulo e ++ " (" ++ tecnica e ++ ")"

-- Contagem 
contarEsbocos :: [Esboco] -> Int
contarEsbocos []     = 0
contarEsbocos (_:es) = 1 + contarEsbocos es

-- Soma das horas
horasDesenhando :: [Esboco] -> Int
horasDesenhando []     = 0
horasDesenhando (e:es) = horas e + horasDesenhando es

-- Main
main :: IO ()
main = do
    let caderno =
          [ Esboco "Ruinas do castelo" "nanquim" 5
          , Esboco "Criatura de terror" "carvao" 3
          , Esboco "Floresta sombria" "grafite" 4
          ]
    let vazio = [] :: [Esboco]

    putStrLn ("Mais recente: " ++ esbocoMaisRecente caderno)
    putStrLn ("Esboços: " ++ show (contarEsbocos caderno))
    putStrLn ("Horas desenhando: " ++ show (horasDesenhando caderno))
    putStrLn ("Caderno vazio: " ++ esbocoMaisRecente vazio)

    -- Caderno novo
    let cadernoNovo = Esboco "Farol abandonado" "nanquim" 6 : caderno

    putStrLn "--- Caderno anterior ---"
    putStrLn ("Mais recente: " ++ esbocoMaisRecente caderno)
    putStrLn ("Esboços: " ++ show (contarEsbocos caderno))
    putStrLn "--- Caderno novo ---"
    putStrLn ("Mais recente: " ++ esbocoMaisRecente cadernoNovo)
    putStrLn ("Esboços: " ++ show (contarEsbocos cadernoNovo))

    -- putStrLn (titulo (head vazio))
