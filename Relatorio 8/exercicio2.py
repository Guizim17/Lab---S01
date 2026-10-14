class HeroiOverwatch:
    def __init__(self, codinome: str, funcao: str):
        self.codinome = codinome
        self.funcao = funcao

    def usar_suprema(self) -> None:
        print(f"{self.codinome} ({self.funcao}) usou Pneu da morte!")


class HeroiTanque(HeroiOverwatch):
    def usar_suprema(self) -> None:
        print(f"{self.codinome} ({self.funcao}) avanca para proteger os aliados!")


class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self) -> None:
        print(f"{self.codinome} ({self.funcao}) ressuscita os aliados caidos!")

    def curar_equipe(self) -> None:
        print(f"{self.codinome} esta curando a equipe!")


if __name__ == "__main__":
    herois: list[HeroiOverwatch] = [
        HeroiOverwatch("Junkrat", "Dano"),
        HeroiTanque("Reinhardt", "Tanque"),
        HeroiSuporte("Mercy", "Suporte"),
    ]

    for heroi in herois:
        heroi.usar_suprema()          # polimorfismo
        if isinstance(heroi, HeroiSuporte):
            heroi.curar_equipe()      # método exclusivo dos suportes
