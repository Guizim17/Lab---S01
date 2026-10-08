using System;
using System.Collections.Generic;

/*
 
  - COMPOSICAO
    O Grimorio é criado dentro do construtor da Maga. Ele nasce junto com ela
    o grimório pertence exclusivamente àquela maga. Se a Maga deixar de existir,
    o grimório deixa de existir junto, porque nenhuma outra parte do programa
    guarda referência a ele.
 
  - Agregacao
    Os Companheiros são criados no Main, antes da Maga, e depois entregues a ela
    pelo metodo Recrutar().
 */

public class Grimorio
{
	public string FeiticoFavorito { get; set; } = "Nenhum";

	public void Abrir() 
	{
		Console.WriteLine($"Feitico Favorito: {FeiticoFavorito}");
	}
}	

public class Companheiro
{
	public string Nome { get; private set; }
	public string Funcao { get; private set; }

	public Companheiro(string nome, string funcao)
	{
		Nome = nome;
		Funcao = funcao;
	}

	public void Apresentar()
	{
		Console.WriteLine($"- {Nome} ({Funcao})");
	}
}

public class Maga
{
    public string Nome { get; private set; }


    public Grimorio Grimorio { get; }

    private List<Companheiro> _companheiros = new List<Companheiro>();

    public Maga(string nome)
    {
        Nome = nome;
        Grimorio = new Grimorio();
    }

    public void Recrutar(Companheiro c)
    {
        _companheiros.Add(c);
        Console.WriteLine($"{c.Nome} se juntou à jornada de {Nome}.");
    }

    public void MostrarGrupo()
    {
        Console.WriteLine($"\n=== Grupo de {Nome} ===");

        if (_companheiros.Count == 0)
        {
            Console.WriteLine("Viajando sozinha.");
            return;
        }

        foreach (var companheiro in _companheiros)
        {
            companheiro.Apresentar();
        }
    }
}

public class Program
{
	public static void Main(string[] args)
	{
        var fern = new Companheiro("Fern", "Maga aprendiz");
        var stark = new Companheiro("Stark", "Guerreiro");

        var frieren = new Maga("Frieren");

        frieren.Recrutar(fern);
        frieren.Recrutar(stark);

        frieren.Grimorio.FeiticoFavorito = "Magia do campo de flores";

        frieren.MostrarGrupo();

        Console.WriteLine();
        frieren.Grimorio.Abrir();
	}
}

