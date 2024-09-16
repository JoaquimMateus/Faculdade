notas = []


print("Digite -1 para sair da repeticao")
while True:
    nota = float(input("Digite as notas: "))
    if nota == -1:
        break
    notas.append(nota)

alunos = len(notas)
soma_notas = sum(notas)
media_aritmetica = (soma_notas/alunos)

print("quantidade alunos: ", alunos)
print("media das notas da turma: (2.F)", media_aritmetica)
print("Soma das notas: ", soma_notas)