# A palavra "class" é usada para criar uma classe.

#  Uma classe funciona como um molde para criar objetos.
class Carro:
# "def" definir uma função ou método
# "__init__" é um método especial chamado de construtor de classe.
# Ele é executado automaticamente quando um objeto é criado

# "self" representa o proprio objeto.
# "marca", "modelo", "ano" e "velocidade" são parâmetros recebidos pela classe.

# Método Construtor:
    def __init__(self, marca, modelo, ano, velocidade=0):
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
        self.velocidade = velocidade
    # Métodos
    # Método acelerar
    def acelerar(self, aumento):
        #self.velocidade = self.velocidade + aumento
        self.velocidade += aumento

        print(f"O carro acelerou para{self.velocidade} km/h")



#  Criando um objeto da classe Carro

# "carro1" é uma variável que recebe um objeto
carro1 = Carro("Chevrolet", "toro", 2020, 0)


#  Exibe informações do carro
print(f"Marca: {carro1.marca}")
print(f"Modelo: {carro1.modelo}")
print(f"Ano: {carro1.ano}")
print(f"Velocidade: {carro1.velocidade} km/h")

carro1.acelerar(50)

carro2 = Carro("Ford", "Mobiauto", 2015, 0)


#  Exibe informações do carro
print(f"Marca: {carro2.marca}")
print(f"Modelo: {carro2.modelo}")
print(f"Ano: {carro2.ano}")
print(f"Velocidade: {carro2.velocidade} km/h")


carro3 = Carro("Fiat", "Pulse Hybrid", 2024, 0)


#  Exibe informações do carro
print(f"Marca: {carro3.marca}")
print(f"Modelo: {carro3.modelo}")
print(f"Ano: {carro3.ano}")
print(f"Velocidade: {carro3.velocidade} km/h")


carro4 = Carro("Fiat", "Fastback Hybrid", 2024, 0)


#  Exibe informações do carro
print(f"Marca: {carro4.marca}")
print(f"Modelo: {carro4.modelo}")
print(f"Ano: {carro4.ano}")
print(f"Velocidade: {carro4.velocidade} km/h")