package main
import "fmt"

// funcao 
func GerarEscalaPlantao(n int){
	dia := 1	// declarar o primeiro dia
	for i := 1; i <= n; i++{	// determina os dias e printa
		fmt.Println("Plantao ", i, ": ", "Dia ", dia, "do mes")
		dia += 4
	}
}

func main(){
	var dias int	// numero de dias desejados de plantoes
	fmt.Scan(&dias)	// input dos dias
	if(dias > 0){	// barra se a quantidade de dias for 0 ou negativa
		GerarEscalaPlantao(dias)	// chama a funcao
	}
}
