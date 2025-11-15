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