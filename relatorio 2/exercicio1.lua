local function gerarTabelaPotencias(inicio, fim, base) -- Funcao
    local resultado                                    -- resultado da operacao
    local tabelaF = {}                                 -- tabela dentro da funcao
    for j = inicio, fim do                             -- for para fazer a conta
        resultado = base ^ j                          
        table.insert(tabelaF, resultado)
    end
    return tabelaF                                     -- retornar a tabela
end

-- variaveis
local M = tonumber(io.read())       -- inicio
local N = tonumber(io.read())       -- fim
local base = tonumber(io.read())

-- chamar a funcao e imprimir tabela
local tabela = gerarTabelaPotencias(M, N, base)
local cont = M                     -- contador para auxiliar no print
for i = 1, #tabela do
    print(base .. " ^ " .. cont .. " = " .. tabela[i])
    cont = cont + 1
end
