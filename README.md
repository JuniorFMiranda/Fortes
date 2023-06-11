# Fortes

## Objetivo
Um exemplo simples e sem fins comerciais para teste.

**O que irei encontrar no projeto**

- Uma tela de lançamento;
- Uma tela de pesquisa onde será possível pesquisar selecionando a coluna e digitando o valor desejado.
Após a localizar o registro, será possível retornar o valor para o lançamento através do dblclick, enter ou
pressionando o botão de OK.

**O que foi utilizado**

- Orientação a objetos;
- Desenvolvimento orientado à Interfaces (Não haver preocupação de lembrar de liberar determinados objetos da memória.);
- Collections;
- Generics
- Teste unitário
- E muitas mais!

# ATENÇÃO
Caso ocorra o problema de tipos de dados divergentes, seguir os passos:

- Criar uma conexão para o banco a partir do FDConnection;
- Nos forms AbastecimentoItemForm e FindPesquisarCombustivelForm, nos objetos tbDefault e qryFind, remover os campos pelo fields editor 
e adicionar de novo a partir da sua conexão;
- Remover a sua conexão recem criada;
- O sistema precisará dos campos para realizar alguns BINDS e da propriedade DISPLAYFORMAT (se desejar mascarar) dos campos numéricos para definir as máscaras no DBGRID.

