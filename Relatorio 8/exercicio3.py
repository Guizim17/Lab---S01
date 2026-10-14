class Persona:
    def __init__(self, nome: str, arcano: str):
        self.nome = nome
        self.arcano = arcano

    def invocar(self) -> None:
        print(f"Persona! {self.nome} (Arcano: {self.arcano})")


class Aliado:
    def __init__(self, nome: str, codinome: str):
        self.nome = nome
        self.codinome = codinome


class Lider:
    def __init__(self, codinome: str):
        self.codinome = codinome
        # COMPOSIÇÃO
        self.persona = Persona("Arsene", "Louco")
        # AGREGAÇÃO
        self._equipe: list[Aliado] = []

    def recrutar(self, aliado: Aliado) -> None:
        self._equipe.append(aliado)
        print(f"{aliado.nome} entrou para os Phantom Thieves como {aliado.codinome}!")

    def infiltrar(self, palacio: str) -> None:
        print(f"\n{self.codinome} invadiu o Palacio de {palacio}!")
        self.persona.invocar()
        print("Equipe:")
        for aliado in self._equipe:
            print(f"  - {aliado.codinome} ({aliado.nome})")


"""
- Composição: a Persona é criada dentro do Lider e só existe enquanto ele existir

- Agregação: a equipe guarda referências a aliados criados fora do Lider
"""

if __name__ == "__main__":
    # Aliados existem antes do líder (agregação)
    ryuji = Aliado("Ryuji Sakamoto", "Skull")
    ann = Aliado("Ann Takamaki", "Panther")

    joker = Lider("Joker")
    joker.recrutar(ryuji)
    joker.recrutar(ann)

    joker.infiltrar("Kamoshida")
