package main
import "fmt"

// funcao para validar codigo
func ValidarCodigoRastreio(codigo string) (bool, string){
	if(len(codigo) != 10){	// conta e verifica o tamanho do codigo 
		return false, "Erro: o codigo de rastreio deve ter exatamente 10 caracteres."
	}
	// se nao for barrado pelo if, passa direto
	return true, "Codigo de rastreio registrado no sistema!"
}

func main() {
	var sequencia string // determina que a variavel sequencia é uma string

	// repetir até ter 10 caracteres
	for{
		fmt.Scan(&sequencia)	// input do codigo
		valido, texto := ValidarCodigoRastreio(sequencia)	// atribuicoes da funcao
		if(valido){				// caso seja valido
			fmt.Println(texto)	// printa o texto de validacao
			break				// quebra o for e encerra o codigo
		}else{					// caso a funcao retorne false
			fmt.Println(texto)	// printa a mensagem de erro
		}
	}
}
