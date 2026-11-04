import java.util.ArrayList;

/*
 - Composicao: o Cozinheiro cria a Panela dentro do proprio construtor. A panela
  nasce com ele, pertence a ele e nao existe fora dele.
 
 - Agregacao: os monstros sao criados no main, antes do Cozinheiro, e depois
  recebidos prontos por adicionarIngrediente(). O Cozinheiro apenas guarda
  referencias a eles, e os monstros existem mesmo sem o cozinheiro.
 */

abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract String receita();
}

class Slime extends Monstro {
    public Slime(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Esquentar na panela ate ferver, temperar com salsa e pimenta preta.";
    }
}

class Mandragora extends Monstro {
    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Cozinhar em fogo baixo e refogar com manteiga.";
    }
}

class Panela {
    private String material;

    public Panela(String material) {
        this.material = material;
    }

    public String getMaterial() {
        return material;
    }
}

class Cozinheiro {
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela);
        this.ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println("Cozinheiro: " + nome);
        System.out.println("Panela de " + panela.getMaterial());

        for (Monstro monstro : ingredientes) {
            System.out.println(monstro.getNome() + ": " + monstro.receita());
        }
    }
}

public class main {
    public static void main(String[] args) {
        Monstro slime = new Slime("Slime gigante");
        Monstro mandragora = new Mandragora("Mandragora gritante");

        Cozinheiro cozinheiro = new Cozinheiro("Senshi", "Aluminio");
        cozinheiro.adicionarIngrediente(slime);
        cozinheiro.adicionarIngrediente(mandragora);

        cozinheiro.servirBanquete();
    }
}
