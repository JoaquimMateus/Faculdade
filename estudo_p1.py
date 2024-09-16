class titular(object):
    def __init__(self, nome_titular, sobrenome_titular, cpf): 
        self.nome_titular = nome_titular
        self.sobrenome_titular = sobrenome_titular
        self.cpf = cpf
    
    def getnome(self):
        return self.nome_titular
    def getsobrenome(self):
        return self.sobrenome_titular
    def getcpf(self):
        return self.cpf
    
    def setnome(self, novo_nome):
        self.nome_titular = novo_nome
    def setsobrenome_titular(self, novo_sobrenome):
        self.sobrenome_titular = novo_sobrenome
    def setcpf(self, novo_cpf):
        self.cpf = novo_cpf
    def nome_completo(self):
        nome_c = str(self.nome_titular) + " " + str(self.sobrenome_titular)
        return nome_c
    
class conta(object):
    def __init__(self, numero_conta, saldo, obj_titular, vl_limite = 1000):
        self.numero_conta = numero_conta
        self.titular = obj_titular
        self.saldo = float(saldo)
        self.vl_limite = float(vl_limite)
    
    def getnumero_conta(self):
        return self.numero_conta
    def get_titular(self):
        return self.titular
    def getsaldo(self):
        return self.saldo
    def getvl_limite(self):
        return self.vl_limite
    def get_titular_nome(self):
        return self.titular.getnome()
    def get_titular_sobrenome(self):
        return self.titular.getsobrenome()
    def get_titular_cpf(self):
        return self.titular.getcpf()
    
    def setnumero_conta(self, novo_numero_conta):
        self.numero_conta = novo_numero_conta
    def setsaldo(self, novo_saldo):
        self.saldo = novo_saldo
    def setvl_limite(self, novo_vl_limite):
        self.vl_limite = novo_vl_limite
    def set_titular_nome(self):
        return self.titular.setnome(novo_nome)
    def extrato_reduzido(self):
        print(f"{self.getnumero_conta()}, {self.getsaldo()}")
    def extrato_normal(self):
        print(f" Nome: {self.get_titular_nome()}, {self.get_titular_sobrenome()}, CPF: {self.get_titular_cpf()}, Numero da conta: {self.getnumero_conta()},  Saldo: {self.getsaldo()}")
    def dados_titular(self):
        return vars(self.titular)
    def deposito(self, valor):
        self.saldo += valor
    def saque(self, valor):             # Com crítica (RN - Regra de Negócio)
        if self.saldo + self.vl_limite < valor:
            print("saque realizado")
        else:
            print("saldo insuficiente")
        
        
