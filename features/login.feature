#language: pt

Funcionalidade: Login
  Para que eu possar me conectar e compartilhar fotos e videos
  Sendo um usuario previamente cadastrado
  Posso acessar o sistema com o meu telefone, nome de usuario ou e-mail e senha

  @login_happy
  Cenario: Acesso
    Quando eu faço login com "teststark@yahoo.com" e "jarvis123"
    Então devo ver "teststark" na area logada

  @login_unhappy
  Esquema do Cenario: Login sem sucesso
    Quando eu faço login com <email> e <senha>
    Então devo ver a mensagem de alerta <texto>

    Exemplos:
      | email                 | senha       | texto                                  |
      | "teststark@yahoo.com" | "jarvis122" | "Sua senha está incorreta. Confira-a." |
      | "404@yahoo.com"       | "jarvis123" | "Sua senha está incorreta. Confira-a." |

  @login_empty
  Esquema do Cenario: Login sem sucesso campos vazios
    Quando eu faço login com <email> e <senha>
    Então devo ver o botão 'Entrar' desabilitado

    Exemplos:
      | email                 | senha       |
      | ""                    | "jarvis123" |
      | "teststark@yahoo.com" | ""          |