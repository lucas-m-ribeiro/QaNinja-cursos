require "capybara"
require "capybara/rspec"
require "selenium-webdriver"

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|

    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL

  #configuração para redimensionamento da tela do browser
  config.before(:example) do
    page.current_window.resize_to(1920,1080)
  end

  #configuração para screenshoot da tela e expressão regular para salvar os nomes dos arquivos
  #sem acentos e espações nos nomes
  config.after(:example) do |e|
    nome = e.description.gsub(/[^A-Za-z0-9]/, '').tr(' ', '_')
    #para habilitar o print do teste apenas para cenarios que falham basta descomentar o if abaixo
    page.save_screenshot('log/' + nome + '.png') #if e.exception
  end

end

Capybara.configure do |config|

  #linha de configuração para excutar os teste no chrome
  config.default_driver = :selenium_chrome_headless

  #Para execeutar os testes de forma normal com o navegador, basta comentar a opção headles e descomentar
  #a opção logo abaixo.

  # config.default_driver = :selenium_chrome


  #linha de configuração para tempo de espera do codigo ao encontrar
  #elementos na pagina
  config.default_max_wait_time = 5	

  #configuração da url padrão do projeto
  config.app_host = 'https://training-wheels-protocol.herokuapp.com'

end