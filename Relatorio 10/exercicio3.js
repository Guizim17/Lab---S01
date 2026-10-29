class FichaDeCriatura {
    constructor(criatura, nivelDePerigo) {
        this.criatura = criatura;
        this.nivelDePerigo = nivelDePerigo;
    }

    descrever() {
        return `${this.criatura} - Nivel de perigo: ${this.nivelDePerigo}`;
    }
}

class DiarioMisterioso {
    #fichas = [];

    constructor(numero) {
        this.numero = numero;
    }

    anotar(criatura, nivelDePerigo) {
        const ficha = new FichaDeCriatura(criatura, nivelDePerigo);
        this.#fichas.push(ficha);
    }

    exibirFichas() {
        console.log(`\n--- DIARIO No ${this.numero} ---`);
        this.#fichas.forEach(f => console.log(f.descrever()));
    }
}

class Funcionario {
    constructor(nome, cargo) {
        this.nome = nome;
        this.cargo = cargo;
    }
}

class CabanaDoMisterio {
    #funcionarios = [];

    constructor(dono) {
        this.dono = dono;
    }

    contratar(funcionario) {
        this.#funcionarios.push(funcionario);
    }

    abrirAsPortas() {
        console.log(`\n--- ${this.dono} ABRE A CABANA DO MISTERIO! ---`);
        this.#funcionarios.forEach(f => console.log(`${f.nome} - ${f.cargo}`));
    }
}


// --- MAIN ---

// COMPOSICAO: as fichas sao criadas dentro do metodo anotar() do diario e
// guardadas apenas no #fichas. O main nunca tem acesso a elas: elas so existem
// dentro do diario, se o diario deixar de existir, as fichas somem junto.

// AGREGACAO: os funcionarios sao criados no main antes da Cabana existir e
// depois sao passados para ela com contratar(). A Cabana apenas guarda
// referencias a eles: as variaveis dos funcionarios continuam existindo
// independentemente da Cabana, e poderiam ser usadas ou contratadas em outro lugar.

const diario = new DiarioMisterioso(3);
diario.anotar('Gnomos', 'Baixo');
diario.anotar('Gobblewonker', 'Medio');
diario.anotar('Multi-Urso', 'Alto');
diario.exibirFichas();

const wendy = new Funcionario('Wendy', 'Caixa');
const soos  = new Funcionario('Soos', 'Faz-tudo');

const cabana = new CabanaDoMisterio('Tio Stan');
cabana.contratar(wendy);
cabana.contratar(soos);
cabana.abrirAsPortas();
