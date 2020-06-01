describe 'botões de radio', :radio do 

    before(:each) do
        visit '/radios'
    end

    it 'selecao por id' do
        choose('cap')
    end

    it 'selecao por find e css selector' do
        find('input[value=guardians]').click
    end 

    after(:each) do
        sleep 5
    end 
end