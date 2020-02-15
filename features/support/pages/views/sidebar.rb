class SidebarView
  include Capybara::DSL

  def logged_user
   find('.SKguc .gmFkV').text
  end
end