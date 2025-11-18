# Entendendo melhor FATORES

# São variáveis categóricas. Armazenadas internamente como inteiros e exibidas como strings.

# sem fator - o R trata como texto comum
escolaridade_texto <- c("Médio", "Superior", "Fundamental", "Médio")
summary(escolaridade_texto)
paste(escolaridade_texto)

# com fator - o R entende que são categorias
escolaridade_fator <- factor(c("Médio", "Superior", "Fundamental", "Médio"))
paste(escolaridade_fator)


# comparando as duas variáveis 
summary(escolaridade_texto)   # só conta caracteres
summary(escolaridade_fator)   # mostra CONTAGEM por categoria.


# gráficos:

# com fatores, os gráficos ficam organizados
library(ggplot2)
dados <- data.frame(
  genero = factor(c("F", "M", "F", "F", "M")),
  salario = c(3000, 4000, 3500, 3200, 4500)
)

ggplot(dados, aes(x = genero, y = salario)) + 
  geom_boxplot()  # O eixo X fica organizado com as categorias


# Para prever salário baseado em gênero e escolaridade

modelo <- lm(salario ~ genero + escolaridade_fator, data = dados)
# O modelo automaticamente cria "variáveis dummy" a partir dos fatores

#_______________________________________________________________________________

# exemplos práticos do dia-a-dia:

# Dados de uma pesquisa de satisfação
satisfacao <- c("Insatisfeito", "Satisfeito", "Neutro", "Satisfeito", "Insatisfeito")

# Transformando em fator COM ORDEM (importante!)
satisfacao_fator <- factor(satisfacao, 
                           levels = c("Insatisfeito", "Neutro", "Satisfeito"),
                           ordered = TRUE)

# Agora posso fazer análises melhores:
table(satisfacao_fator)  # Tabela de frequência
prop.table(table(satisfacao_fator))  # Proporções

# E o R entende a ORDEM das categorias
median(satisfacao_fator)  # Funciona porque tem ordem
