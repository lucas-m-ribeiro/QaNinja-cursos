describe 'inspecionando select 2' do

    describe('single', :single ) do
        
        before(:each) do
        
            visit "/apps/select2/single.html"
    
        end 
        
        it 'Seleciona ator por nome' do

            find('.select2-selection--single').click
            find('.select2-results__option', text: 'Adam Sandler').click
        
        end

        it 'busca e clica no ator' do

            find('.select2-selection--single').click
            find('.select2-search__field').set 'Chris Rock'
            find('.select2-results__option').click
        
        end 
    end


    describe('multiplo', :multi) do

        before(:each) do 
            visit "/apps/select2/multi.html"
        end 

        def seleciona (ator)
            find('.select2-selection--multiple').click
            find('.select2-search__field').set ator
            find('.select2-results__option').click 
        end 

        it 'selecionar atores' do 
            
            atores =['jim Carrey', 'Kevin James', 'Owen Wilson']

            atores.each do |a|
                seleciona(a)
            end 
            sleep 5
        end
    end
end