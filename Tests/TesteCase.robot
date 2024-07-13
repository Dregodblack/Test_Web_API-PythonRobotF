*** Settings ***
Documentation                 Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Resource                            ../config/configBooks.robot
Suite Setup                         Iniciar Sessão API

# robot -d ./results Teste\TesteCase.robot

# GET    = Pegar
# POST   = Incluir
# DELETE = Deletar
# PUT    = Atualizar


*** Test Cases ***
CT01: Buscar a listagem de todos os livros (GET em todos os livros)
    Requisitar todos os livros
    Conferir o status code    200
    Conferir o reason    OK
    Conferir se retorna uma lista com "200" livros

CT02: Buscar um livro especifico (GET em um livro especifico)
    Requisitar o livro "15"
    Conferir o status code    200    
    Conferir o reason    OK
    Conferir se retorna todos os dados corretos do livro 15

# CT03: Cadastrar um novo livro (POST)
#     # Conferir se retorna todos os dados cadastrados para o novo livro

# CT04: Alterar um livro (PUT)
#     # Conferir se retorna todos os dados alterados do livro 150

# CT05: Deletar um livro (DELETE)
#     # Conferir se deleta o livro 200
