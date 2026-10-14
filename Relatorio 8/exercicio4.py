from abc import ABC, abstractmethod


# interface
class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self) -> None:
        pass


# parte composta
class Cyberdeck:
    def __init__(self, modelo: str):
        self.modelo = modelo


# implementacao com composicao
class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome: str, modelo_cyberdeck: str):
        self.nome = nome
        self.cyberdeck = Cyberdeck(modelo_cyberdeck)

    def executar_invasao(self) -> None:
        print(f"Netrunner {self.nome}, usando o cyberdeck {self.cyberdeck.modelo}, "
              f"está quebrando o gelo (ICE) de um servidor.")


# Outra implementacao
class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo: str):
        self.codigo = codigo

    def executar_invasao(self) -> None:
        print(f"Drone {self.codigo} esta interceptando o sinal da rede.")


# agregacao
class CelulaHacker:
    def __init__(self, nome: str, membros: list[IUnidadeDeRede]):
        self.nome = nome
        self.membros = membros

    def iniciar_ataque(self) -> None:
        print(f"Celula {self.nome} iniciando ataque!")
        for membro in self.membros:
            membro.executar_invasao()   # polimorfismo


if __name__ == "__main__":
    netrunner = OperadorNetrunner("Lucy", "Tetratronic Rippler Mk.4")
    drone = DroneDeVigilancia("DRN-077")

    celula = CelulaHacker("Voodoo Boys", [netrunner, drone])
    celula.iniciar_ataque()

    # unidade = IUnidadeDeRede()
    # TypeError: Can't instantiate abstract class IUnidadeDeRede with abstract method executar_invasao
    # classes abstratas nao podem ser instanciadas diretamente
