use std::io;

fn calcular_pontuacao(prova1: f64, prova2: f64, redacao: f64) -> f64 {
    let npt = (prova1 + prova2) / 2.0;
    let pf = (npt * 0.6) + (redacao * 0.4);

    if pf >= 60.0 {
        println!("Parabéns! Candidato aprovado no processo seletivo.");
    } else {
        println!("Infelizmente o candidato não atingiu a pontuação mínima de aprovação.");
    }

    println!("Pontuação Final: {:.2}", pf);

    pf
}

fn ler_nota(mensagem: &str) -> f64 {
    loop {
        println!("{}", mensagem);

        let mut entrada = String::new();
        io::stdin()
            .read_line(&mut entrada)
            .expect("Falha ao ler a entrada");

        match entrada.trim().parse() {
            Ok(numero) => return numero,
            Err(_) => println!("Digite um número válido!"),
        }
    }
}

fn main() {
    let prova1 = ler_nota("Digite a nota da prova 1:");
    let prova2 = ler_nota("Digite a nota da prova 2:");
    let redacao = ler_nota("Digite a nota da redação:");

    let pontuacao_final = calcular_pontuacao(prova1, prova2, redacao);

    println!("Valor retornado pela função: {:.2}", pontuacao_final);
}
