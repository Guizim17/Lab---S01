use std::io;

fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32) {
    for numero in limite_inferior..=limite_superior {   // for do limite inferior ate o superior
        if numero % 10 == digito {                      // faz o resto do numero 
            println!("{}", numero);                     // printa
        }
    }
}

// funcao extra para ler o valor
fn ler_numero(mensagem: &str) -> i32 {
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
    let digito = ler_numero("Digite o dígito final desejado (0 a 9):");
    let limite_inferior = ler_numero("Digite o limite inferior:");
    let limite_superior = ler_numero("Digite o limite superior:");

    imprimir_terminados_em(digito, limite_inferior, limite_superior);
}
