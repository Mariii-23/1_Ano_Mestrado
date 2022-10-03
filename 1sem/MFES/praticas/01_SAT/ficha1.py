from pysat.solvers import Minisat22
# Exemplo
s = Minisat22()                # cria o solver s

s.add_clause([-1, 2])          # acrescenta uma cláusula
s.add_clause([-1, -2, 3])

if s.solve():                  # testa a satisfatibilidade
    print("SAT")
    print(s.get_model())       # imprime o modelo
else: 
    print("UNSAT")

s.delete()       
# Ex 2-1
print(" ----  Ex 2 1 ----")
s21 = Minisat22()                # cria o solver s

# A - 1
# B - 2
# C - 3
"""
A v B -> A v C <=> not(A v B) v (A v C) <=> (not A v A v C) && (not B v A v C)
Para testar tabelas de verdade: https://www.erpelstolz.at/gateway/TruthTable.html
"""
s21.add_clause([-1, 1, 2])          # acrescenta uma cláusula
s21.add_clause([-2, 1, 3])

if s21.solve():                  # testa a satisfatibilidade
    print("SAT")
    print(s21.get_model())       # imprime o modelo
else: 
    print("UNSAT")

s21.delete()    
"""
Resposta: [-1, -2, -3]
Logo, existe solução, e é os 3 valores serem falsos.
"""

print(" ----  Ex 2 2 ----")
s22 = Minisat22()                # cria o solver s

# A - 1
# B - 2
# C - 3
"""
(A → B ∨ C) ∧ ¬(A ∧ ¬B → C) <=> (¬A v B v C) ∧ A ∧ ¬B ∧ ¬C
Para testar tabelas de verdade: https://www.erpelstolz.at/cgi-bin/cgi-form?key=0000c8f6
"""
s22.add_clause([-1, 2, 3])          
s22.add_clause([1])
s22.add_clause([-2])
s22.add_clause([-3])

if s22.solve():                  # testa a satisfatibilidade
    print("SAT")
    print(s22.get_model())       # imprime o modelo
else: 
    print("UNSAT")

s22.delete()    
"""
Resposta: UNSAT
Logo, é impossível satisfazer, e é uma contradição.
"""

print(" ----  Ex 3 ----")
s3 = Minisat22()                # cria o solver s

# Mitico (Mi) - 1
# Mortal (Mo) - 2
# Mamífero (Ma) - 3
# Cornudo (H) - 4
# Mágico (Magico) - 5
"""
Mi -> not Mo <=> not Mi or not Mo  -> 1 linha
not Mi -> (Mo && Ma) -> <=> Mi v (Mo && Ma) <=> (Mi v Mo) && (Mi v Ma)   -> 2 linhas, porque tem o &&
(not Mo v Ma) -> H <=> (Mo && not Ma) v H <=> (H v Mo) && (H v not Ma)
not H v Magico
"""
s3.add_clause([-1, -2])          
s3.add_clause([1, 2])
s3.add_clause([1, 3])
s3.add_clause([4, 2])
s3.add_clause([4, -3])
s3.add_clause([-4, 5])

pergunta2 = False
if (pergunta2):
    s3.add_clause([1, -2, -3, -4, -5,])

pergunta4a = False
if (pergunta4a):
    # Será que é possível a um unicórnio ser simultanemente mítico e imortal?
    s3.add_clause([1])
    s3.add_clause([-2])
pergunta4b = True
if (pergunta4b):
    # Poderá existir um unicórnio mortal que não seja mamífero? (Mortal e não mamífero?)
    s3.add_clause([1])
    s3.add_clause([-3])


if s3.solve():                  # testa a satisfatibilidade
    print("SAT")
    print(s3.get_model())       # imprime o modelo
else: 
    print("UNSAT")

s3.delete()    
"""
Resposta: [-1, 2, 3, 4, 5]
Está igual à ficha, porque eu considerei mortal, e na ficha é imortal. 
Na pergunta 2 deu-me outra solução, mas posso ter feito mal. Se for satisfazível, tem, no mínimo, 2 soluções.
4a - [1, -2, -3, 4, 5].
Logo, é possível ser: mítico, imortal. Tem de ser: não mamífero, cornudo e mágico.
4b - [1, -2, -3, 4, 5], parece que sim
"""
# Ex 4
print(" ----  Ex 4 ----")
s4 = Minisat22()                # cria o solver s

# Ar Condicionad - 1
# Bateria AC - 2
# gasolina 3.2 - 3
"""
O ar condicionado Thermotronic comfort requer uma bateria de alta capacidade, - Ar condicionado && bateria AC
exceto quando combinado com motores a gasolina de 3,2 litros.” (entendi como, ar condicionado não precisa da bateria se tiver o motor, logo)
Ar condicionado && motor gasolina3.2

Será que um cliente pode escolher o ar condicionado Thermotronic comfort, uma bateria
de pequena capacidade, mas não escolher o motor de 3,2 litros?

Ar Condicionado && not bateria AC && not motor 3.2 litros?
"""
s4.add_clause([1, 2])          # acrescenta uma cláusula
s4.add_clause([1,3 ])
s4.add_clause([1, -2, -3])

if s4.solve():                  # testa a satisfatibilidade
    print("SAT")
    print(s4.get_model())       # imprime o modelo
else: 
    print("UNSAT")

s4.delete()    
"""
Dúvida: a de baixo está correto?
Resposta: [1, -2, -3] 
Parece que dá?

No 5-2, acho que devia ser algo do género: (segunda && not Terça && not Quarta ...) OR (not segunda && terça && not quarta...) ...
"""
# Ex 6

print(" ----  Ex 6 ----")

pos = [
    "AnaEsq", "AnaCen", "AnaDir", 
"SusEsq", "SusCen", "SusDir",
"PedEsq", "PedCen", "PedDir"
]

x = {}
c = 1
for d in pos:
    x[d] = c
    c += 1

s6 = Minisat22()                # cria o solver s
s6.add_clause([-x['AnaEsq'], -x['PedCen']])
s6.add_clause([-x['AnaDir'], -x['PedCen']])
s6.add_clause([-x['AnaCen'], -x['PedEsq']])
s6.add_clause([-x['AnaCen'], -x['PedDir']])

# Ficar na cadeira da esquerda
s6.add_clause([-x['AnaEsq']])

#A Susana não se quer sentar à esquerda do Pedro. Considerei que a Susana pode ficar na esquerda de todo, e o Pedro na da direita.
s6.add_clause([-x['SusEsq'], -x['PedCen']])
s6.add_clause([-x['SusCen'], -x['PedDir']])
#s6.add_clause([-x['SusEsq'], -x['PedDir']])

# Garantir que pessoas existam
s6.add_clause([x['AnaEsq'], x['AnaCen'], x['AnaDir']])
s6.add_clause([x['SusEsq'], x['SusCen'], x['SusDir']])
s6.add_clause([x['PedEsq'], x['PedCen'], x['PedDir']])

# Garantir que uma pessoa só se senta na mesma cadeira
"""
AnaEsq -> (not SusEsq && not PedEsq) <=> (not AnaEsq OR not SusEsq) && (not AnaEsq OR not PedroEsq)
"""
# Só Ana se senta na Esq
s6.add_clause([-x['AnaEsq'], -x['SusEsq']])
s6.add_clause([-x['AnaEsq'], -x['PedEsq']])

s6.add_clause([-x['AnaCen'], -x['SusCen']])
s6.add_clause([-x['AnaCen'], -x['PedCen']])

s6.add_clause([-x['AnaDir'], -x['SusDir']])
s6.add_clause([-x['AnaDir'], -x['PedDir']])

# Desisti e não fiz para todas :) Fiz em função do que saia
s6.add_clause([-x['PedDir'], -x['SusDir']])
s6.add_clause([-x['PedEsq'], -x['SusEsq']])


if s6.solve():                  # testa a satisfatibilidade
    print("SAT")
    print(s6.get_model())       # imprime o modelo
else: 
    print("UNSAT")

s6.delete()    
"""
Res: [-1, -2, 3, -4, 5, -6, 7, -8, -9]
Pedro Susana Ana
"""
