#                         Sobre Funções:

# Algumas info básicas:
# Para abrir o Help em alguma função:
?c 

# Instalação de pacotes:
install.packages("stringr") # Exemplo de pacote que instalei.

# Para carregar pacotes:
library(nomedopacote)

# Para ver exemplos:
example(função) 


# FUNÇÕES BÁSICAS E UTILITÁRIAS:

#       <Matemática Básica>

# Soma, média, mediana
sum(), mean(), median()  

# Mínimo, máximo, amplitude
min(), max(), range()

# Desvio padrão, variância
sd(), var()  

# Valor absoluto, raiz, log, exponencial
abs(), sqrt(), log(), exp() 

# Arredondamento
round(), ceiling(), floor() 

# Funções trigonométricas
sin(), cos(), tan() 



#       <Manipulação de Vetores>

# Tamanho do vetor
length() 

# Ordenação
sort(), order() 

# Reverter a ordem
rev() 

# Valores únicos
unique() 

# Encontrar posições
which(), which.max(), which.min() 



#       <Sequências e Combinações>

# Criar sequências
seq() 

# Repetir valores
rep() 

# Combinar valores
c() 

# Concatenar strings
paste() 


#  FUNÇÕES DE INSPEÇÃO E TESTE

#      <Verificação de Tipo>

# Tipo do objeto
class(), typeof() 

# Estrutura do objeto
str() 

# Modo do objeto
mode() 

# Testes de tipo
is.numeric(), is.character(), is.logical() 

# Verificar NA/NULL
is.na(), is.null() 

#      <Informações do Ambiente>

# Listar objetos
ls() 

# Verificar se objeto existe
exists() 

# Diretório de trabalho
getwd(), setwd() 



# ENTRADA E SAÍDA

#      <Leitura e Escrita>
  
# Imprimir na tela
print(), cat() 

# Ler e escrever tabelas
read.table(), write.table() 

# Arquivos CSV
read.csv(), write.csv() 

# Leitura de dados
scan(), readLines() 



# FUNÇÕES ESTATÍSTICAS
#      <Distribuições>

# Distribuição normal
dnorm(), pnorm(), qnorm(), rnorm() 

# Distribuição binomial
dbinom(), pbinom()

# Amostragem aleatória
sample() 


#      <Estatísticas>

# Correlação
cor() 

# Covariância
cov() 

# Quantis
quantile() 



# MANIPULAÇÃO DE DADOS
#      <Matrizes e Arrays>

# Criar matriz
matrix() 

# Dimensões
dim(), nrow(), ncol() 

# Transposta
t() 

# Diagonal
diag() 

#      <Listas>

# Criar lista
list() 

# Converter para vetor
unlist() 

# Aplicar função a lista
lapply(), sapply() 

