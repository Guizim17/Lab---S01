#include <iostream>
using namespace std;


float calcular_confiabilidade_sistema(float probabilidades[], int tamanho){
    float conf = 1;                         // valor inicial que sera multiplicado
    for(int i = 0; i < tamanho; i++){       
        conf *= probabilidades[i];          // multiplica os valores
    }
    return conf;                            // retorna a confiabilidade
}


int main(){
    int N;                  // numero de valores
    float prob[99];         // valores

    // digita os valores
    cin >> N;
    for(int i = 0; i < N; i++){
        cin >> prob[i];
    }

    // chama a funcao e imprime
    float conf = calcular_confiabilidade_sistema(prob, N);
    cout << conf << " (" << conf*100 << "%)";

    return 0;
}
