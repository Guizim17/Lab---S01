class MortoVivo:
    def __init__(self, nome: str, almas: int, estus: int):
        self.nome = nome          # público
        self._almas = almas       # protegido
        self.__estus = 0          # privado 
        self.set_estus(estus)     # passa pela validacao durante a criacao

    def get_estus(self) -> int:
        return self.__estus

    def set_estus(self, quantidade: int) -> None:
        if 0 <= quantidade <= 10:
            self.__estus = quantidade
        else:
            print("Quantidade de Estus invalida!")

    def mostrar_status(self) -> str:
        return f"Morto-vivo {self.nome} | Almas: {self._almas} | Estus: {self.__estus}"


class Clerigo(MortoVivo):
    def __init__(self, nome: str, almas: int, estus: int, milagre: str):
        super().__init__(nome, almas, estus)
        self.milagre = milagre

    def mostrar_status(self) -> str:
        return f"{super().mostrar_status()} | Milagre: {self.milagre}"


if __name__ == "__main__":
    petrus = Clerigo("Petrus", 2000, 5, "Cura")
    print(petrus.mostrar_status())

    petrus.set_estus(15)   # invalido
    petrus.set_estus(10)   # valido
    print(petrus.mostrar_status())

    # print(petrus.__estus)
    # AttributeError: 'Clerigo' object has no attribute '__estus'
    # atributos com dois underscores sofrem "name mangling": o Python renomeia internamente para _MortoVivo__estus
    # a maneira correta e usando getter
    print("Estus por getter:", petrus.get_estus())
