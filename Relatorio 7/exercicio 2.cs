using System;
using System.Collections.Generic;

public class Pokemon
{
	public string Especie { get; set; }
	public int Nivel { get; set; }

	public Pokemon(string especie, int nivel)
	{
    Especie = especie;
    Nivel = nivel;
	}

	public virtual string Atacar() => "Scratch";
}	

public class TipoPlanta : Pokemon
{
	public TipoPlanta(string especie, int nivel) : base(especie, nivel) { }
	public override string Atacar() => "Razor Leaf";
}

public class TipoEletrico : Pokemon
{
	public TipoEletrico(string especie, int nivel) : base(especie, nivel) { }
	public override string Atacar() => base.Atacar() + " e Thunderbolt";
}

public class Program
{
	public static void Main(string[] args)
	{
		var NaBatalha = new List<Pokemon>
		{
		new TipoPlanta("Cacnea", 15),
		new TipoEletrico("Joltik", 9),
		new Pokemon("Axew", 22)
		};

		foreach (Pokemon pokemon in NaBatalha)
		{
			Console.WriteLine($"{pokemon.Especie} (nv. {pokemon.Nivel}) usou {pokemon.Atacar()}!");
		}

	}
}

