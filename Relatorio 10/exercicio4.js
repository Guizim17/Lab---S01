class UsuarioDeNen {
    constructor(nome) {
        this.nome = nome;
    }

    atacar(alvo) {
        console.log(`${this.nome} lanca uma rajada de aura contra ${alvo.nome}!`);
    }
}

class Intensificador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} concentra a aura no punho e acerta um Jajanken em ${alvo.nome}!`);
    }
}

class Transmutador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} transforma a aura em eletricidade e da um choque em ${alvo.nome}!`);
    }
}

class Materializador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} materializa correntes de aura e prende ${alvo.nome}!`);
    }
}

class Aranha {
    constructor(nome, numero) {
        this.nome = nome;
        this.numero = numero;
    }
}

class TrupeFantasma {
    #aranhas;

    constructor(cidade, aranhas = []) {
        this.cidade = cidade;
        this.#aranhas = aranhas;
    }

    revelarAranhas() {
        console.log(`\n--- TRUPE FANTASMA AVISTADA EM ${this.cidade} ---`);
        this.#aranhas.forEach(a => console.log(`No ${a.numero} - ${a.nome}`));
    }

    buscarAranha(numero) {
        return this.#aranhas.find(a => a.numero === numero);
    }
}


// --- MAIN ---

const uvogin   = new Aranha('Uvogin', 11);
const nobunaga = new Aranha('Nobunaga', 1);

const trupe = new TrupeFantasma('Yorknew', [uvogin, nobunaga]);
trupe.revelarAranhas();

const alvo = trupe.buscarAranha(11);

const hunters = [
    new Intensificador('Gon'),
    new Transmutador('Killua'),
    new Materializador('Kurapika')
];

console.log(`\n--- Hunters enfrentam ${alvo.nome} ---`);
hunters.forEach(h => h.atacar(alvo));
