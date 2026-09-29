#include <iostream>
#include <string>
using namespace std;

class Banda{
    private:
        string nome;
        int integrantes;
        float potenciaSom;
        int energia;

    public:
        Banda(string n, int i, float p, int e):     // lista de inicializacao
            nome(n), integrantes(i), potenciaSom(p), energia(e){}


        void duelar(Banda& Rival){
            cout << "O confronto sera entre " << nome << " vs " << Rival.nome << endl;
            // calcula a energia
            energia -= Rival.potenciaSom;
            Rival.energia -= potenciaSom;

            cout << "Energia restante " << nome << ": " << energia << endl;
            cout << "Energia restante " << Rival.nome << ": " << Rival.energia << endl;
        }
};

int main() {
    Banda banda1("Solado Pelo Baixo", 4, 3.5, 10);
    Banda banda2("Nao Tanka a Bateria", 3, 2.75, 8);

    banda1.duelar(banda2);
    return 0;
}
