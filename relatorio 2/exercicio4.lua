local function calcularMedia(a, b) 
    return (a + b) / 2                  -- retorna a media
end

local function encontrarMaior(a, b)
    if a > b then                       -- encontra o maior valor e o retorna
        return a
    else
        return b
    end
end

local function calcularDiferencaAbsoluta(a, b)
    local resultado = a - b             -- faz a subtracao
    if resultado < 0 then               -- se o resultado for negativo, multiplica por -1
        resultado = resultado * (-1)
    end
    return resultado
end

local function analisarNumeros(n1, n2, operacao)
    invalido = "operacao invalida"     -- variavel para poder retornar como texto
    if operacao == "media" then
        return calcularMedia(n1, n2)
    elseif operacao == "diferenca" then
        return calcularDiferencaAbsoluta(n1, n2)
    elseif operacao == "maior" then
        return encontrarMaior(n1, n2)
    else 
        return invalido
    end
end

-- variaveis dos valores e operacao
local valor1 = tonumber(io.read())
local valor2 = tonumber(io.read())
local operador = io.read()

-- chama a funcao principal, ja imprimindo o resultado das subfuncoes
print("Resultado: " .. analisarNumeros(valor1, valor2, operador))
