local function filtrarMaiores(tabela, limite)   -- funcao
    local maiores = {}                            -- separa valores maiores que o limite
    for i = 1, #tabela do   
        if tabela[i] > limite then                -- caso ache
            table.insert(maiores, tabela[i])
        end
    end
    return maiores                                -- retorna valores maiores que o limite
end

local N = tonumber(io.read())           -- numero de valores na tabela
local tabela1 = {}                      -- tabela na main
for i = 1, N do                         -- inserir valores na tabela
    local valor = tonumber(io.read())
    table.insert(tabela1, valor)
end

local K = tonumber(io.read())           -- numero limite
-- chamar funcao
local resultado = filtrarMaiores(tabela1, K)
-- imprimir resultado
print("Valores maiores que " .. K .. ":")
for i = 1, #resultado do
    print(resultado[i])
end
