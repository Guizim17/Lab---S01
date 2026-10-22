
# Composicao: o PhoneWave e criado dentro do initialize do
# LaboratorioDeGadgets e guardado em @phonewave. Ninguem de
# fora cria ou recebe esse objeto. Se o laboratorio
# deixar de existir, o PhoneWave deixa de existir junto

# Agregacao: os membros sao criados no main antes do
# laboratorio, e apenas sao passados para ele pelo metodo
# admitir. O laboratorio guarda referencias para pessoas que
# ja existiam. Se o laboratorio deixar de existir, os membros
# continuam existindo normalmente no main

class PhoneWave
    def enviar_dmail(mensagem)
      puts "D-Mail: #{mensagem}"
      puts "A mensagem foi enviada para o passado!"
    end
  end
  
  class MembroDoLab
    attr_reader :numero, :nome
  
    def initialize(numero, nome)
      @numero = numero
      @nome = nome
    end
  end
  
  class LaboratorioDeGadgets
    def initialize
      @phonewave = PhoneWave.new
      @membros = []
    end
  
    def admitir(membro)
      @membros << membro
      puts "Membro do laboratorio [ #{membro.numero} ] admitido: #{membro.nome}"
    end
  
    def experimento(mensagem)
      puts
      puts "Membros presentes no experimento:"
      @membros.each do |membro|
        puts "- [ #{membro.numero} ] #{membro.nome}"
      end
      puts
      @phonewave.enviar_dmail(mensagem)
    end
  end
  
  okabe  = MembroDoLab.new("001", "Rintaro Okabe")
  kurisu = MembroDoLab.new("004", "Kurisu Makise")
  
  lab = LaboratorioDeGadgets.new
  lab.admitir(okabe)
  lab.admitir(kurisu)
  
  lab.experimento("Nao abra o micro-ondas antes das 19h")
