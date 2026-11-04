import java.util.HashMap;

interface Sobrenatural {
    void manifestar();
}

class Alienigena implements Sobrenatural {
    private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " desce de um disco voador.");
    }
}

class EspiritoYoukai implements Sobrenatural {
    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " persegue os visitantes em alta velocidade.");
    }
}

class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);
    }

    public void investigar(String local) {
        Sobrenatural ser = avistamentos.get(local);

        if (ser == null) {
            System.out.println(local + ": esta tranquilo.");
        } else {
            System.out.print(local + ": ");
            ser.manifestar();
        }
    }
}

public class main {
    public static void main(String[] args) {
        Sobrenatural alienigena = new Alienigena("Serpo");
        Sobrenatural espirito = new EspiritoYoukai("Vovo Turbo");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();
        mapa.registrar("Hospital abandonado", alienigena);
        mapa.registrar("Tunel da cidade", espirito);

        mapa.investigar("Hospital abandonado");
        mapa.investigar("Tunel da cidade");
        mapa.investigar("Biblioteca da escola");
    }
}
