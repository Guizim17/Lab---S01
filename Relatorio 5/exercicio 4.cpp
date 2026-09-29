#include<iostream>
using namespace std;

int main(){
    // montar matriz
    int matriz_solar[5][5];
    for(int i = 0; i < 5; i++){
        for(int j = 0; j < 5; j++){
            matriz_solar[i][j] = 0;
        }
    }

    int I, J;           // valores auxiliares de i e j
    bool menu = true;   // bool para manter o menu
    int opcao;          // opcao do switch

    while(menu){
        cout << "=== TELEMETRIA DO PAINEL SOLAR ===" << endl;
        cout << "1. Ativar Celula" << endl;
        cout << "2. Ver Mapa da Matriz" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;       // digitar opcao

        switch(opcao){
            case 1:
                cout << "Digite a fileira (0-4): ";
                cin >> I;
                cout << "Digite a coluna (0-4): ";
                cin >> J;

                if(matriz_solar[I][J] == 0){
                    matriz_solar[I][J] = 1;
                    cout << "Sucesso: Celula solar ativada!" << endl;
                }else{
                    cout << "Erro: Celula solar ja esta em operacao!" << endl;
                }
                break;
            case 2:
                cout << "--- Mapa da Matriz Solar ---" << endl;
                for(int i=0; i<5; i++){
                    for(int j = 0; j < 5; j++){
                        cout << "["<<matriz_solar[i][j]<<"] ";
                    }
                    cout << endl;
                }
                break;
            case 3:
                menu = false;
                break;
        }
    }

    // contar celulas ativas e inativas
    float ativo = 0;
    float inativo = 0;
    for(int i = 0; i < 5; i++){
        for(int j = 0; j < 5; j++){
            if(matriz_solar[i][j] == 1){
                ativo++;
            }
            else{
                inativo++;
            }
        }
    }

    // imprimir resultados
    float cap = (ativo/inativo)*100;
    cout << "=== RELATORIO FINAL DE OPERACAO ===" << endl;
    cout << "Total de celulas ATIVAS: " << ativo << endl;
    cout << "Total de celulas INATIVAS: " << inativo << endl;
    cout << "Capacidade Operacional: " << cap << "%" << endl;
}
