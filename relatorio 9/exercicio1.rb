class CoquetelAfterlife
    attr_reader :nome

    def initialize(nome, preco)
        @nome = nome
        @_preco = preco
    end

    def preco=(valor)
        unless valor.is_a?(Numeric) && valor.between?(5, 200)
            raise ArgumentError, "preco invalido!"
        end
        @_preco = valor
    end

    def ficha = "Nome: #{nome} | Preco: #{@_preco}"
end

class DrinkDeLenda < CoquetelAfterlife
    attr_reader :lenda
    
    def initialize(nome, preco, lenda)
        super(nome, preco)
        @lenda = lenda
    end

    def ficha = "#{super} | #{lenda}"
end

coquetel = CoquetelAfterlife.new("La Perle des Alpes", 5)

lendas = [
    DrinkDeLenda.new("The Johnny Silverhand", 199, "Para o rockerboy que nunca desistiu"), 
    DrinkDeLenda.new("The Jackie Welles", 150, "Mais importante... uma pitada de amor"),
]

#coquetel.nome = "Moonshine"

([coquetel] + lendas).each do |drink|
    puts drink.ficha
end

# testar o ArgumentError
begin
    coquetel.preco = 3
  rescue ArgumentError => e
    puts "Erro: #{e.message}"
  end
