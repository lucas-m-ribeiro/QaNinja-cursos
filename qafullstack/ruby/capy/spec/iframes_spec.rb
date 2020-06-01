describe 'iframes' do 

    describe 'iframe bom', :nice do

        before(:each) do 
            visit = '/nice_iframe'
        end 

        it'adicionar ao carrinho' do
            within_frame('burgerId') do
                produto = find('.menu-item-info-box-text', text: 'Refrigerante')
                produto.find('a').click
                expect(find('#cart')).to have_content 'R$ 4,50'
                sleep 5
            end
        end
    end

    describe 'iframe ruim', :bad do 
        
        before(:each) do 
            visit = '/bad_iframe'
        end 

        it 'carrinho esta vazio' do 
        
            script = '$(".box-iframe").attr("id", "tempId");'
            page.execute_script(script)

            within_frame('tempId') do
                expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
                sleep 3
            end
        end
    end
end