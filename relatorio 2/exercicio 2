local function contarOcorrencia(tabela, alvo)   -- funcao
    local contador = 0                          -- conta numero de ocorrencias
    for i = 1, #tabela do   
        if tabela[i] == alvo then               -- caso ache ocorrencia
            contador = contador + 1
        end
    end
    return contador                             -- retorna o numero de ocorrencias
end

local N = tonumber(io.read())           -- numero de numeros na tabela
local tabela1 = {}                      -- tabela na main
for i = 1, N do                         -- inserir valores na tabela
    local valor = tonumber(io.read())
    table.insert(tabela1, valor)
end

local X = tonumber(io.read())           -- numero alvo
-- chamar funcao
local resultado = contarOcorrencia(tabela1, X)
-- imprimir resultado
print("O numero " .. X .. " aparece " .. resultado .. " vez(es) na tabela")
