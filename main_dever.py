from estudo_p1 import conta, titular

if __name__=='__main__':
    t1 = titular('mateus', 'joaquim', 18184457189)
    print(t1.nome_completo())
    c1 = conta(12345, '01', t1)
    print(c1.get_titular_nome())
    print(f"{c1.get_titular_nome()}, {c1.get_titular_sobrenome()}, {c1.get_titular_cpf()}")
    print(f"{c1.get_titular_nome()}, {c1.get_titular_sobrenome()}, {c1.get_titular_cpf()}, {c1.getnumero_conta()}, {c1.getsaldo()}, {c1.getvl_limite()}")
    t2 = titular('Brenno', 'alves', 11111111111)
    c2 = conta(2134123, '02', t2)
    print(f"{c2.get_titular_nome()}, {c2.get_titular_sobrenome()}, {c2.get_titular_cpf()}, {c2.getnumero_conta()}, {c2.getsaldo()}, {c2.getvl_limite()}")
    print(c2.dados_titular())
    c2.deposito(200)
    print(c2.getsaldo())
    c2.saque(300)


    
    
    