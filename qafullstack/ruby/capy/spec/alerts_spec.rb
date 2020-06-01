describe 'alertas de js', :alertas do

    before(:each) do
        visit "/javascript_alerts"
    end


    it 'alerta', :alerta do

        click_button 'Alerta'
        msg = page.driver.browser.switch_to.alert.text
        puts msg
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 2
    end 

    it 'sim confirma', :confirma do

        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        sleep 2

        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
        sleep 3
    end 

    it 'nao confirma', :confirma do

        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        sleep 2

        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
        sleep 3
    end 

    it 'aceitando o prompt', :prompt do

        accept_prompt(with: 'Lucas') do
            click_button 'Prompt'
            sleep 2
        end

        expect(page).to have_content 'Olá, Lucas'
        sleep 3
    end 
    
    it 'negando o prompt', :prompt do 

        dismiss_prompt(with: 'Ana') do
            click_button 'Prompt'
            sleep 2
        end 
        expect(page).to have_content 'Olá, null'
    end 

end