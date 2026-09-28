#include <iostream>
#include <string>
#include <vector>
using namespace std;

class Hobbit{
protected:
    string nome;

public:
    Hobbit(string n) : nome(n) {}

    virtual void fazerAtividade() const{
        cout << "O Hobbit " << nome << " esta tendo um dia tranquilo na Comarca." << endl;
    }

    virtual ~Hobbit() = default;
};

class Jardineiro : public Hobbit{
public:
    Jardineiro(string n) : Hobbit(n) {}

    void fazerAtividade() const override{
        cout << "O Jardineiro " << nome << " esta cuidando das flores e plantas ao redor das tocas!" << endl;
    }
};

class Cozinheiro : public Hobbit{
public:
    Cozinheiro(string n) : Hobbit(n) {}

    void fazerAtividade() const override{
        cout << "O Cozinheiro " << nome << " esta preparando o segundo cafe da manha para os convidados!" << endl;
    }
};

class Fazendeiro : public Hobbit{
public:
    Fazendeiro(string n) : Hobbit(n) {}

    void fazerAtividade() const override{
        cout << "O Fazendeiro " << nome << " esta colhendo vegetais e hortalicas de suas terras!" << endl;
    }
};

int main(){
    Jardineiro j("Johan");
    Cozinheiro c("Claus");
    Fazendeiro f("Franz");

    vector<Hobbit*> grupo = { &j, &c, &f };

    for(Hobbit* p : grupo){
        p->fazerAtividade();
    }

    return 0;
}
