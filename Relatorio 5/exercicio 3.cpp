#include <iostream>
using namespace std;

int main(){
    int max;    // capacidade maxima do drone
    cout << "Informe a capacidade maxida de carga do drone (kg): ";
    cin >> max;
    float atual = 0.0;      // peso atual
    int opcao;          // opcao para o menu
    bool menu = true;   // bool para manter o menu ativo
    float adc;            // adicionar valor
    float dim;            // diminuir valor
    float disp;           // espaco disponivel
    
    // menu
    while(menu){
        cout << "=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Vertificar Carga Atual." << endl;
        cout << "2. Carregar Pacote." << endl;
        cout << "3. Descarregar Pacote." << endl;
        cout << "4. Encerrar Operacao." << endl;
        
        cout << "Escolha uma opcao: ";
        cin >> opcao;   // digitar opcao
        switch(opcao){
            case 1:
                cout << atual << " kg / " << max << " kg" << endl;
                disp = max - atual;
                cout <<"Espaco disponivel: " << disp << " kg" << endl;
            break;
            case 2:
                cout << "Digite o peso do pacote a ser carregado (kg): ";
                cin >> adc;
                if(atual + adc > max){
                    cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada." << endl;
                }else{
                    atual += adc;
                    cout << "Pacote adicionado com sucesso!" << endl;
                }
            break;
            case 3:
                cin >> dim;
                if(dim > atual){
                    cout << "Alerta: não é permitidoremover mais peso do que o que já estácarregado! Operacao cancelada" << endl;
                }else{
                    atual -= dim;
                }
                break;
            case 4:
                menu = false;
                cout << "Encerrando sistema de telemetria...";
                break;
        
        }
    }


    return 0;
}
