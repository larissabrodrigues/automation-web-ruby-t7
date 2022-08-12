Dado('que eu acesse a home page do projeto Qa.Coders') do
  home.load
end

# Então('devo visualizar a informação {string}') do |titleHomePage|
#   home.validate_text_homePage(titleHomePage)
# end

Então('devo visualizar a informação {string}') do |text_home_feature|
  home.validate_text_home(text_home_feature)
end

Quando('clico no menu {string}') do |sobre_nos|
  home.click_button(sobre_nos)
end


