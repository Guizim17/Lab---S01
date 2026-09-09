package main
import "fmt"

// funcao que valida ingresso
func validarIngresso(setor string, codigo int) bool{
	return setor == "VIP" && codigo == 2026	// retorna true apenas nessas condicoes
}

func main(){
	var setor string	// variaveis com os mesmos nomes da funcao
	var codigo int

	// for infinito
	for {
		fmt.Scan(&setor, &codigo)	// input das variaveis
		if(validarIngresso(setor, codigo)){	// chamando a funcao dentro do if
			fmt.Println("Acesso liberado a area VIP!")	// mensagem de validacao
			break	// quebra o for infinito
		}else{	// caso retorne false printa outra mensagem
			fmt.Println("Ingresso ou setor invalido. Tente novamente")
		}
	}
}

