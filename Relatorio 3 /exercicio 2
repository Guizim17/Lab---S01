use std::io;

// funcao que avalia o acerto (ou erro)
fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool {
    let resposta = (numero_secreto - palpite).abs();    // faz a diferenca (absoluto)

    resposta <= 5
}

// funcao para contar a distancia do acerto
fn exibir_acerto(palpite: i32, numero_secreto: i32) {
    let diferenca = (numero_secreto - palpite).abs();   // faz a diferenca (absoluto)

    println!("Você acertou! Ficou a apenas {} unidades do número secreto!", diferenca);
}

fn main() {
    let numero_secreto = 88;

    loop {
        println!("Digite seu palpite:");

        let mut palpite = String::new();    // input do palpite
        io::stdin()
            .readline(&mut palpite)
            .expect("Falha ao ler a entrada");

        let palpite: i32 = match palpite.trim().parse() {   // conversao de string para int
            Ok(numero) => numero,       // caso falhe
            Err() => {
                println!("Digite um numero valido!");
                continue;
            }
        };

        if acertou_o_alvo(palpite, numero_secreto) {
            exibir_acerto(palpite, numero_secreto);
            break;
        } else {
            println!("Voce passou longe! Tente novamente.");
        }
    }
}
