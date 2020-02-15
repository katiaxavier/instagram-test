Before do
  @login = LoginPage.new
  @sidebar = SidebarView.new
end

After do |scenario|
  if scenario.failed?
  temp_shot = page.save_screenshot("log/temp_shot.png")
  screenshot = Base64.encode64(File.open(temp_shot).read)
  embed(screenshot, "image/png", "Screenshot")
  end
end