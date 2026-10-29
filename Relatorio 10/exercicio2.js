class Pistola {
    constructor(modelo) {
        this.modelo = modelo;
    }
}

class AgenteProtocolo {
    #pistola;

    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome;
        this.#pistola = new Pistola(modeloDaPistola);
    }

    usarHabilidade() {
        throw new Error(`O agente ${this.codinome} deve implementar o metodo 'usarHabilidade()'`);
    }

    entrarEmCombate() {
        console.log(`${this.codinome} entra em combate com: ${this.#pistola.modelo} | ${this.usarHabilidade()}`);
    }
}

class Controlador extends AgenteProtocolo {
    usarHabilidade() {
        return 'Lanca uma cortina de fumaca!';
    }
}

class Iniciador extends AgenteProtocolo {
    usarHabilidade() {
        return 'Dispara uma flecha de reconhecimento!';
    }
}

class Duelista extends AgenteProtocolo {
    usarHabilidade() {
        return 'Avanca e abre espaco no bomb!';
    }
}

class Esquadrao {
    #agentes;

    constructor(nome, agentes) {
        this.nome = nome;
        this.#agentes = agentes;
    }

    iniciarPartida() {
        console.log(`\n--- ESQUADRAO ${this.nome} ENTROU NA PARTIDA! ---`);
        this.#agentes.forEach(a => a.entrarEmCombate());
    }

    listarControladores() {
        return this.#agentes.filter(a => a instanceof Controlador);
    }
}


// --- MAIN ---

const omen      = new Controlador('Omen', 'Ghost');
const brimstone = new Controlador('Brimstone', 'Classic');
const sova      = new Iniciador('Sova', 'Sheriff');
const jett      = new Duelista('Jett', 'Frenzy');

const esquadrao = new Esquadrao('SIGMA', [omen, brimstone, sova, jett]);

esquadrao.iniciarPartida();

console.log('\nControladores do esquadrao:');
esquadrao.listarControladores().forEach(c => console.log(`- ${c.codinome}`));

const maisUm = new AgenteProtocolo('Recruta', 'Classic');
// maisUm.entrarEmCombate();
