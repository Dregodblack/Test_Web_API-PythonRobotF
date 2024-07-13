# *** Settings ***
# Resource                  ../pages/pages.robot
# Resource                  ../config/resource.robot
# Library                   SeleniumLibrary
    
# *** Keywords ***
# Dado que eu como usuario acesso o site da Web Motors e realizo login "${Email}", "${Senha}"
#     Olha se Existe                                           ${Logo}
#     Click No Item                                            ${BT_ComecarAnuncio}
#     Olha se Existe                                           ${Logo_EscudoSeguro}
#     Verifica Se Item Esta Na Tela                            ${Checkbox_Termos}
#     Verifica Se Item Esta Na Tela                            ${Checkbox_Condicoes}
#     Click No Item                                            ${BT_Concordar}

#     Olha se Existe                                           ${TitlePage_CriarConta}
#     Click No Item                                            ${BT_FazerLogin}
#     Olha se Existe                                           ${TitlePage_Login}
#     Verifica Se Input Esta Na Tela                           ${Input_email}                       ${Email}
#     Verifica Se Input Esta Na Tela                           ${Input_Senha}                       ${Senha}
#     Click No Item                                            ${BT_Logar}

# Quando preencho as informações sobre o veículo "${Marca}", "${Modelo}", "${Ano_Modelo}", "${Ano_Fabric}", "${Versao}", "${Cor}", "${KM_Rodado}", e "${Preco}"
#     Olha se Existe                                           ${TitlePage_Especificações}
#     Seleciona Item Combo Box                                 ${Select_Marca}                      ${Marca}
#     Seleciona Item Combo Box                                 ${Select_Modelo}                     ${Modelo}
#     Seleciona Item Combo Box                                 ${Select_Ano}                        ${Ano_Modelo} 
#     Seleciona Item Combo Box                                 ${Select_Fabric}                     ${Ano_Fabric} 
#     Seleciona Item Combo Box                                 ${Select_Versao}                     ${Versao} 
#     Seleciona Item Combo Box                                 ${Select_Cor}                        ${Cor}
#     Click No Item                                            ${BT_Continuar}
#     Olha se Existe                                           ${TitlePage_InfoCarro}
#     Verifica Se Input Esta Na Tela                           ${Input_KM}                          ${KM_Rodado}
#     Verifica Se Input Esta Na Tela                           ${Input_Valor}                       ${Preco}
#     Click No Item                                            ${BT_Continuar}

# E filtro os itens adicionais do carro "@{List_Caracteristicas}", e "@{List_ItensAdicionais}"
#     Olha se Existe                                           ${TitlePage_Options}
    
#     # Seleciona Item Check Box Caracteristicas add "@{List_Caracteristicas}"
#     # Verifica CheckBox Caracteristicas add e Seleciona        ${ConjuntodeCaracters}              @{List_Caracteristicas}
#     Select From List By Value                                @{List_Caracteristicas}
    
    
#     Click No Item                                            ${BT_Continuar}        
#     Olha se Existe                                           ${Title_Page_Destaq}      
#     Verifica CheckBox Itens add e seleciona                  ${ConjuntodeItens}                  @{List_ItensAdicionais}
#     Click No Item                                            ${BT_Continuar}

# E preencho as informacoes disponiveis sobre o usuario "${Email}", "${Senha}"
#     Olha se Existe                                           ${TitlePage_Information}
#     Verifica Se Input Esta Na Tela                           ${Input_Login}                       ${Email}
#     Verifica Se Input Esta Na Tela                           ${Input_Password}                    ${Senha}
#     Click No Item                                            ${BT_Continuar}    

# E preencho os requisitos para aplicação de anúncio "${Select_Plano}", "${Endereco}", "${Numeracao}", "${Complemento}", "${Placa}"
#     Olha se Existe                                           ${TitlePage_Inserir_Fotos}
#     Verifica Se Item Esta Na Tela                            ${BT_InserirDepois}
#     Olha se Existe                                           ${TitlePage_Plano}
#     Verifica CheckBox Planos e seleciona                     ${ConjuntodePlanos}                  ${Select_Plano}        
#     Olha se Existe                                           ${TitlePage_Itens}
#     Click No Item                                            ${BT_Continue}   
#     Verifica Se Item Esta Na Tela                            ${Boleto}
#     Verifica Se Input Esta Na Tela                           ${Input_DigitarEndereco}             ${Endereco}
#     Verifica Se Input Esta Na Tela                           ${Input_NumeracaoResidencial}        ${Numeracao}
#     Verifica Se Input Esta Na Tela                           ${Input_InserirComplemento}          ${Complemento}
#     Verifica Se Input Esta Na Tela                           ${Input_InserirPlaca}                ${Placa}
#     Verifica Se Item Esta Na Tela                            ${Termo_Adesao}
#     Verifica Se Item Esta Na Tela                            ${BT_Pagar}

# Então valido a mensagem "${Texto}" confirmando que realizei o anúncio com sucesso!
#     Verifica se existe o texto na Tela                       ${TitlePage_boletoGerado}            ${Texto}