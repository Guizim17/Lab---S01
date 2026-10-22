class Instrumentista
    attr_reader :nome, :instrumento

    def initialize(nome, instrumento)
      @nome = nome
      @instrumento = instrumento
    end
  
    def interpretar(peca)
      raise NotImplementedError, "#{self.class} implemente o metodo interpretar!"
    end
  end
  
  class Solista < Instrumentista
    def interpretar(peca)
      puts "#{nome} (#{instrumento}) comeca a tocar #{peca}"
    end
  end
  
  class Acompanhador < Instrumentista
    def interpretar(peca)
      puts "#{nome} (#{instrumento}) acompanha o ritmo do solista em \"#{peca}\"."
    end
  end
  
  class Regente
    def initialize(nome)
      @nome = nome
      @orquestra = []
    end
  
    def convocar(instrumentista)
      @orquestra << instrumentista
    end
  
    def reger(peca)
      puts "O regente #{@nome} rege #{peca}:"
      @orquestra.each do |instrumentista|
        instrumentista.interpretar(peca)
      end
    end
  
    def escalacao
      @orquestra.map do |instrumentista|
        "#{instrumentista.class}: #{instrumentista.nome}"
      end
    end
  end
  
  kaori   = Solista.new("Kaori Miyazono", "violino")
  kousei  = Acompanhador.new("Kousei Arima", "piano")
  regente = Regente.new("Hiroko Seto")
  
  regente.convocar(kaori)
  regente.convocar(kousei)
  
  regente.reger("Dies Irae de Mozart")
  
  puts
  puts "Escalacao:"
  regente.escalacao.each do |texto|
    puts "- #{texto}"
  end
  
  outro = Instrumentista.new("Takeshi Aiza", "piano")
  # outro.interpretar("Balada nº 1, de Chopin")
