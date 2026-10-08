using System;
using System.Collections.Generic;

public class CombatenteDeGondor
{
	public string Nome { get; private set; }
	public string Povo { get; private set; }
	public string Posto { get; private set; }

	public string Armamento { get; private set; } = "Desarmado";

	public CombatenteDeGondor(string nome, string povo, string posto)
	{
		Nome = nome;
		Povo = povo;
		Posto = posto;
	}

	
	public void Equipar(string arma) => Armamento = arma;
	
	
	public void ApresentarUnidade()
	{
		Console.WriteLine($"Nome: {Nome}");
		Console.WriteLine($"Povo: {Povo}");
		Console.WriteLine($"Posto: {Posto}");
	
		if (Armamento != "Desarmado")
		{
		Console.WriteLine($"Armamento: {Armamento}");
		}

		Console.WriteLine(new string ('-', 30));
	}
}	

public class Program
{
	public static void Main(string[] args)
	{
		CombatenteDeGondor boromir = new CombatenteDeGondor("Boromir", "Homens de Gondor", "Comandante Militar");
		CombatenteDeGondor imrahil = new CombatenteDeGondor("Imrahil", "Homens de Dol Amroth", "Príncipe");
		CombatenteDeGondor beregond = new CombatenteDeGondor("Beregond", "Homens de Gondor", "Guarda da Cidadela");

		beregond.Equipar("Espada e Escudo");
		imrahil.Equipar("Lanca");

		Console.WriteLine("=== Registro das Unidades ===\n");

		// imrahil.Posto = "Comandate";

		boromir.ApresentarUnidade();
		imrahil.ApresentarUnidade();
		beregond.ApresentarUnidade();

	}
}

