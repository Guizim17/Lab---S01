class Pokemon {
    #vida;

    constructor(apelido, tipo, vidaInicial) {
        this.apelido = apelido;
        this.tipo = tipo;
        this.#vida = vidaInicial;
    }

    get vida() {
        return this.#vida;
    }

    sofrerDano(pontos) {
        this.#vida = Math.max(0, this.#vida - pontos);
        console.log(`${this.apelido} sofreu ${pontos} de dano. Vida restante: ${this.#vida}`);
    }

    atacar(alvo) {
        console.log(`${this.apelido} ataca ${alvo.apelido}!`);
        alvo.sofrerDano(10);
    }
}

class Squirtle extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, 'Agua', vidaInicial);
    }

    atacar(alvo) {
        console.log(`${this.apelido} usa Jato d'Agua em ${alvo.apelido}!`);
        alvo.sofrerDano(20);
    }
}

class Bulbasaur extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, 'Planta', vidaInicial);
    }

    atacar(alvo) {
        console.log(`${this.apelido} usa Chicote de Vinha em ${alvo.apelido}!`);
        alvo.sofrerDano(15);
    }
}


// --- MAIN ---

const squirtle  = new Squirtle('Tortuguita', 50);
const bulbasaur = new Bulbasaur('Alface', 30);

bulbasaur.atacar(squirtle);
squirtle.atacar(bulbasaur);
squirtle.atacar(bulbasaur);

console.log(`\nVida de ${squirtle.apelido}: ${squirtle.vida}`);
console.log(`Vida de ${bulbasaur.apelido}: ${bulbasaur.vida}`);

// console.log(squirtle.#vida);
