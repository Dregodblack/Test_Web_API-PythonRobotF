*** Settings ***
Documentation             Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Library                   RequestsLibrary
Library                   Collections

*** Variables ***
${URL_API}                https://fakerestapi.azurewebsites.net/api/v1/
&{Book_15}                ID=15
...                       title=Book 15
...                       pageCount=1500

*** Keywords ***
Iniciar Sessão API
    Create Session    fakeAPI    ${URL_API}

*** Keywords ***
#CT01
Requisitar todos os livros
    ${Resposta}    Get On Session    fakeAPI    Books
    Log    ${Resposta.text}
    Set Test Variable    ${Resposta}    

Conferir o status code
    [Arguments]    ${STATUSCODE_DESEJADO}
    Should Be Equal As Strings    ${Resposta.status_code}    ${STATUSCODE_DESEJADO}

Conferir o reason
    [Arguments]    ${STATUSCODE_REASON}
    Should Be Equal As Strings    ${Resposta.reason}    ${STATUSCODE_REASON}    

Conferir se retorna uma lista com "${Qntde_livros}" livros
    Length Should Be    ${Resposta.json()}    ${Qntde_livros}

#CT02
Requisitar o livro "${ID_LIVRO}"
    ${Resposta}    Get On Session    fakeAPI    Books/${ID_LIVRO}
    Log            ${Resposta.text}
    Set Test Variable    ${Resposta}
                                
Conferir se retorna todos os dados corretos do livro 15
    Dictionary Should Contain Item    ${Resposta.json()}    ID             ${Book_15.ID}
    Dictionary Should Contain Item    ${Resposta.json()}    title          ${Book_15.title}
    Dictionary Should Contain Item    ${Resposta.json()}    pageCount      ${Book_15.pageCount}
    Should Not Be Empty               ${Resposta.json()["description"]}
    Should Not Be Empty               ${Resposta.json()["excerpt"]}
    Should Not Be Empty               ${Resposta.json()["publishDate"]}
