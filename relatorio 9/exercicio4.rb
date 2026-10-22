module Depoente
    def depor
      raise NotImplementedError, "#{self.class} implemente o metodo depor!"
    end
  end
  
  module Detivel
    def ser_detido
      puts "#{nome} foi levado(a) pela Scotland Yard."
    end
  end
  
  class Envolvido
    attr_reader :nome
  
    def initialize(nome)
      @nome = nome
    end
  end
  
  class TestemunhaOcular < Envolvido
    include Depoente
  
    def depor
      puts "#{nome} (testemunha): Vi um homem de casaco escuro saindo da casa pela janela dos fundos."
    end
  end
  
  class SuspeitoDoCrime < Envolvido
    include Depoente
    include Detivel
  
    def initialize(nome, alibi)
      super(nome)
      @alibi = alibi
    end
  
    def depor
      puts "#{nome} (suspeito): #{@alibi}"
    end
  end
  
  class Investigacao
    def initialize(caso)
      @caso = caso
      @envolvidos = []
    end
  
    def registrar(envolvido)
      @envolvidos << envolvido
    end
  
    def ouvir_todos
      puts "=== #{@caso} ==="
      puts "Holmes ouve os depoimentos:"
      @envolvidos.each do |envolvido|
        envolvido.depor
      end
    end
  
    def acionar_scotland_yard
      puts
      puts "Holmes entrega o caso a Scotland Yard:"
      detiveis = @envolvidos.select { |envolvido| envolvido.respond_to?(:ser_detido) }
      detiveis.each do |suspeito|
        suspeito.ser_detido
      end
    end
  end
  
  testemunha = TestemunhaOcular.new("Sra. Hudson")
  suspeito1  = SuspeitoDoCrime.new("Lorde Ashcombe", "Passei a noite inteira no clube, jogando cartas com tres amigos.")
  suspeito2  = SuspeitoDoCrime.new("Edgar Pryce", "Estava no trem para Brighton, ainda tenho a passagem no bolso.")
  
  investigacao = Investigacao.new("O Caso do Relogio de Prata")
  investigacao.registrar(testemunha)
  investigacao.registrar(suspeito1)
  investigacao.registrar(suspeito2)
  
  investigacao.ouvir_todos
  investigacao.acionar_scotland_yard
