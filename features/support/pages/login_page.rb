class LoginPage
  include Capybara::DSL

  def go
    visit '/accounts/login'
  end

  def with(email, pass)
    find('[name=username]').set email
    find('[name=password]').set pass
    click_button 'Entrar'
    end

    def alert
      find('#slfErrorAlert').text
    end

end