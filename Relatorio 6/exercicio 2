#include <iostream>
#include <string>
using namespace std;

class LinkSocial{
private:   
    string nome;
    string arcana;
    int rank = 0;

public:
    // getters
    string getNome() const { return nome; }
    string getArcana() const { return arcana; }
    int getRank() const { return rank; }
    
    // setters
    void setNome(string n) { nome = n; }
    void setArcana(string a) { arcana = a; }
    void setRank(int r) { rank = r; }
    
    // method
    void subirRank(){
        rank++;
    }
};

int main(){
    LinkSocial link;    // variavel para a classe

    // usando os setters
    link.setNome("Futaba");
    link.setArcana("Hermit");
    link.setRank(5);

    // chama o method
    link.subirRank();

    // cout com os getters
    cout << "--- Dados ---" << endl;
    cout << "Nome: " << link.getNome() << endl;
    cout << "Arcana: " << link.getArcana() << endl;
    cout << "Rank: " << link.getRank() << endl;

    return 0;
}
