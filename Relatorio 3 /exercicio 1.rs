use std::io;

// funcao para validar as placas
fn validar_placa(placa: &str) -> bool {
    let tamanho_ok = placa.len() >= 7;          // ter 7 ou mais caracteres
    let letras_maiusculas = placa.chars().filter(|c| c.is_ascii_uppercase()).count();   // contar letras maisculas
    let numeros = placa.chars().filter(|c| c.is_numeric()).count(); // contar numeros

    tamanho_ok && letras_maiusculas >= 4 && numeros >= 2    // validando todos os pre requisitos
}

fn main() {
    loop {  // estrutura loop ao inves do for
        println!("Digite a placa do veiculo:");

        let mut placa = String::new();      // ciar placa
        io::stdin()                         // ler a placa (digitar)
            .read_line(&mut placa)
            .expect("Falha ao ler a entrada");

        let placa = placa.trim();   // tirar os espacos em branco

        if validar_placa(placa) {   // caso funcao retorne true
            println!("Placa cadastrada no sistema!");
            break;
        } else {
            println!("Placa invalida! Tente novamente.\n");
        }
    }
}
