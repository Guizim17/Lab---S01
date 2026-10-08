using System;
using System.Collections.Generic;

public class EntidadeCosmica
{
    public string Nome { get; private set; }
    public string Origem { get; private set; } = "Desconhecida";

    public EntidadeCosmica(string nome)
    {
        Nome = nome;
    }

    public void DefinirOrigem(string origem)
    {
        Origem = origem;
    }

    public virtual void Manifestar()
    {
        Console.WriteLine($"{Nome} se manifesta diante do pesquisador.");

        if (Origem != "Desconhecida")
        {
            Console.WriteLine($"Origem registrada: {Origem}");
        }
    }
}

public class Profundo : EntidadeCosmica
{
    public Profundo(string nome) : base(nome) { }

    public override void Manifestar()
    {
        Console.WriteLine($"{Nome} emerge das aguas escuras, coaxando em uma lingua esquecida.");
    }
}

public class MiGo : EntidadeCosmica
{
    public MiGo(string nome) : base(nome) { }

    public override void Manifestar()
    {
        base.Manifestar();
        Console.WriteLine("Um zumbido metalico preenche o ar enquanto suas asas membranosas se agitam.");
    }
}

public class Pesquisador
{
    public string Nome { get; private set; }

    private List<EntidadeCosmica> _catalogo = new List<EntidadeCosmica>();

    public Pesquisador(string nome)
    {
        Nome = nome;
    }

    public void Catalogar(EntidadeCosmica e)
    {
        _catalogo.Add(e);
        Console.WriteLine($"[{Nome}] Relato catalogado: {e.Nome}");
    }

    public void LerCatalogo()
    {
        Console.WriteLine($"\n=== Catalogo de {Nome} — Biblioteca da Universidade Miskatonic ===\n");

        foreach (var entidade in _catalogo)
        {
            entidade.Manifestar(); 
            Console.WriteLine();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        var cor = new EntidadeCosmica("A Cor que Caiu do Espaco");
        var profundo = new Profundo("Profundo de Innsmouth");
        var migo = new MiGo("Mi-Go");

        profundo.DefinirOrigem("Recife do Diabo, Innsmouth");
        migo.DefinirOrigem("Yuggoth");

        var armitage = new Pesquisador("Dr. Henry Armitage");

        armitage.Catalogar(cor);
        armitage.Catalogar(profundo);
        armitage.Catalogar(migo);

        armitage.LerCatalogo();
    }
}
