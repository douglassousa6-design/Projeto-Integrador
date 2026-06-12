# ==========================================
# CLASSE VETERINÁRIO
# ==========================================

#Classe Veterinário: armazena os dados dos veterinários cadastrados na clínica.
#Objetos: são as instâncias das classes, como o veterinário Bruno, a cadela Luna e o atendimento realizado.


class Veterinario:
    def __init__(self, id_veterinario, nome, crmv,
                 especialidade, telefone, email, endereco):

        self.id_veterinario = id_veterinario
        self.nome = nome
        self.crmv = crmv
        self.especialidade = especialidade
        self.telefone = telefone
        self.email = email
        self.endereco = endereco


# ==========================================
# CLASSE USUÁRIO
# ==========================================

#Classe Usuário: armazena os dados dos usuários que acessam o sistema.


class Usuario:
    def __init__(self, id_usuario, nome, email, senha):

        self.id_usuario = id_usuario
        self.nome = nome
        self.email = email
        self.senha = senha


# ==========================================
# CLASSE ANIMAL
# ==========================================

# Classe Animal: armazena os dados dos animais atendidos.


class Animal:
    def __init__(self, id_animal, nome, raca,
                 sexo, data_nascimento, peso, id_cliente):

        self.id_animal = id_animal
        self.nome = nome
        self.raca = raca
        self.sexo = sexo
        self.data_nascimento = data_nascimento
        self.peso = peso
        self.id_cliente = id_cliente


# ==========================================
# CLASSE ATENDIMENTO
# ==========================================

# Classe Atendimento: registra os atendimentos realizados e faz o relacionamento entre Animal e Veterinário.

class Atendimento:
    def __init__(self, id_atendimento, tipo_atendimento,
                 data_atendimento, hora_atendimento,
                 valor, animal, veterinario):

        self.id_atendimento = id_atendimento
        self.tipo_atendimento = tipo_atendimento
        self.data_atendimento = data_atendimento
        self.hora_atendimento = hora_atendimento
        self.valor = valor

        # Relacionamentos
        self.animal = animal
        self.veterinario = veterinario


# Método exibir_atendimento(): mostra todas as informações do atendimento na tela.


    def exibir_atendimento(self):

        print("===== ATENDIMENTO =====")
        print(f"ID: {self.id_atendimento}")
        print(f"Animal: {self.animal.nome}")
        print(f"Veterinário: {self.veterinario.nome}")
        print(f"Tipo: {self.tipo_atendimento}")
        print(f"Data: {self.data_atendimento}")
        print(f"Hora: {self.hora_atendimento}")
        print(f"Valor: R$ {self.valor}")


# ==========================================
# CRIAÇÃO DOS OBJETOS
# ==========================================

veterinario = Veterinario(
    5000,
    "Kaio",
    "50",
    "Dermatologia",
    "(63)99944-55",
    "Kaio@gmail.com",
    "Rua X"
)
# atributos do animal ex: id, nome, raça, sexo, idade e peso.
animal = Animal(
    3000,
    "Luna",
    "Poodle",
    "F",
    "04/05/2018",
    "4,5 kg",
    2
)
# atendimento mostrará o id do atendimento, o tipo, a data/hora, valor e  qual valor.

atendimento = Atendimento(
    6044,
    "Consulta",
    "05/03/2026",
    "16:00",
    69.99,
    animal,
    veterinario
)

#Relacionamento: a classe Atendimento recebe um objeto Animal e um objeto Veterinário, 
# mostrando qual veterinário atendeu qual animal. Isso é um exemplo de associação em Programação Orientada a Objetos.


# ==========================================
# TESTE
# ==========================================

atendimento.exibir_atendimento()
