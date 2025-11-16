# OBJETIVO: entender o básico de como a linguagem R organiza os dados.

# neste código, vamos realizar uma operação salario/horas e aplicar várias
# funções para manipulação dos valores. 

# armazenamento numérico

salario <- 3450.89 
horas <- 220

SH <- salario/horas # o valor do salário dividido pelas horas.

# esta função torna o valor inteiro; corta a parte decimal, sem arredondar:
SH_inteiro <- as.integer(salario/horas) 

# também poderia fazer da seguinte forma:
SH_inteiro2 <- as.integer(SH) # isto é, passando a variável SH diretamente, 
# ao invés de realizar a operação de divisão dentro da função.

# arredondamento
SH_arredondado <- round(salario/horas) 

# Deixando truncado
SH_truncado <- trunc(salario/horas) # (corta tudo depois da vírgula)

# arredonda para baixo
SH_baixo <- floor(salario/horas)    

# arredonda para cima
SH_cima <- ceiling(salario/horas)  
#_______________________________________________________________________________

# armazenamento de caracteres

nome_1 <- "Eduardo Abreu"
nome_2 <- "Amanda Lopes"
idade <- "25"   # é número, mas de tipo string.

nomes <- nome_1 + nome_2  # isso não funciona, operação com strings não é assim.
nomes <- c(nome_1, nome_2)  # cria um vetor com 2 elementos.
print(nomes) # saída esperada: "Eduardo Abreu" "Amanda Lopes".

nomes[1] # pra acessar os valores de "nomes" por índice; saída: "Eduardo Abreu"
nomes[2] # indíce 2; saída: "Amanda Lopes"

nome_1 == nome_2 # comparação de strings. resultado: false

# outra forma de armazenar caracteres:
# com a função paste()
unindo_nomes <- paste(nome_1, nome_2) # esta função cria uma string única
print(unindo_nomes) # saída: "Eduardo Abreu Amanda Lopes"

# também é possível adicionar separadores:
unindo_nomes2 <- paste(nome_1, nome_2, sep = "-")
print(unindo_nomes2) # saída: "Eduardo Abreu-Amanda Lopes"

#_______________________________________________________________________________

# armazenamento de fatores

# a função as.factor() indica que os números armazenados são uma <categoria> e não números aleatórios.

cargahoraria <- c(220, 220, 150, 100, 100)
summary(cargahoraria)

cargahoraria_fator <- as.factor(cargahoraria) # transforma a variável em um fator.
summary(cargahoraria_fator) # mostra informações detalhadas.

mode(cargahoraria_fator) # mostra o modo de armazenamento da variável, que ainda é numérico.
class(cargahoraria_fator) # e aqui mostra que o tipo é fator, pois faz uma categorização dos números armazenados.
str(cargahoraria_fator) # Mostra a estrutura completa do fator.

#_______________________________________________________________________________

# armazenamento lógico

var_logica <- salario > horas # a variável recebe a verificação se salario é maior que horas; assim, ela é de tipo lógico.

var_logica1 <- TRUE # passando a palavra reservada "TRUE" também gera uma variável de tipo lógico.
var_logica2 <- c(23, TRUE, FALSE, 42) # mas nesse caso, o tipo da variável é numérico e o R entende true como 1 e false como 0.
var_logica2 # aqui mostra os valores da variável acima: 23  1  0 42
