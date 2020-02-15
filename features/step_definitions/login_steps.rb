Quando("eu faço login com {string} e {string}") do |email, password|
  @login.go
  @login.with(email, password)
end

Então("devo ver {string} na area logada") do |expect_name|
  expect(@sidebar.logged_user).to eql expect_name
end

Então("devo ver a mensagem de alerta {string}") do |message|
  expect(@login.alert).to eql message
end

Então("devo ver o botão {string} desabilitado") do |botao|
  expect(page).to have_button('Entrar', disabled: true)
end