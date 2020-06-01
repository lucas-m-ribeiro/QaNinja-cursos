# describe 'Tabelas', :table do
    
#     before(:each) do
#         visit = '/tables'
#     end 

#     #neste exemplo a busca é feita com um loop parecido com o for each, porem usando o metodo
#     #do Ruby chamado detect
#     it 'deve exibir o salario do stark' do

#         atores = all('table tbody tr')
#         stark = atores.detect {|ator| ator.text.include?('Robert Downey Jr')}
#         expect(stark.text).to include '10.000.000'
#     end

#     #Neste exemplo tambem é efetuada a busca do valor especifico na tabela
#     #porem é realizado com um valor chave para o encontro do valor desejado
#     it 'deve exibir o salario do vin diesel' do 

#         diesel = find('table, tbody, tr' text: '@vindiesel')
#         expect(diesel).to have_content '10.000.000'
#     end 

#     # Neste cenario é feito uma pesquisa na tabela colocando o numero da coluna em especifico
#     # no codigo buscando exatamente o campo que deve ser comparado
#     it 'deve exibir o filme do velozes e furiosos' do

#         diesel = find('table tbody tr', text: '@vindiesel')
#         movie = diesel.all('td')[2].text

#         expect(movie).to eql 'Velozes e Furiosos'
#     end

#     #Neste exemplo é repetido o mesmo do cenarios anterior porem agora usndo o instagram de 
#     # outro ator
#     it 'deve exibir o insta do chris evans' do
    
#         evans = find('table tbody tr', text: 'Chris Evans')
#         insta = evans.all('td')[4].text

#         expect(insta).to eql '@teamcevans'
#     end 

#     #Neste cenario, o teste é feito com os botões presentes na tela de edição e remoção
#     # em cada um dos cenarios são testados os dois botões quando clicados e validando a mensagem
#     # que aparece nos alerts

#     it 'deve selecionar o chris prat para remoção' do 
#         prat = find('table tbody tr', text: 'Chris Prat')
#         prat.find('a', text: 'delete').click

#         msg = page.driver.browser.switch_to.alert.text
#         expect(msg).to eql 'Chris pratt foi selecionado para remocao!'
#     end 

#     it 'deve selecionar o chris prat para edição' do 
#         prat = find('table tbody tr', text: 'Chris Prat')
#         prat.find('a', text: 'edit').click

#         msg = page.driver.browser.switch_to.alert.text
#         expect(msg).to eql 'Chris pratt foi selecionado para edição!'
#     end 
# end