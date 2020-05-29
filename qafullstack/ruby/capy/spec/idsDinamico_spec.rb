describe 'IDs dinamicos', :id do

    before(:each) do
        visit = 'https://training-wheels-protocol.herokuapp.com/access'
    end 

    # $= => termina com
    # ^= => começa com
    # *= =>contem

    it 'cadastro' do

        find('input[id$=UsernameInput]').set 'lucas'
        find('input[id^=PasswordInput]').set '123456' 
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde a aprovação do seu cadastro!'
        sleep 3
    end 
end 