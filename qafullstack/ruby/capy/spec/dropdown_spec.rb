describe "caixa de selecao", :dropdown do

    it "item especifico simples" do

        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3
    end 


    it "item especifico com o find" do

        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find ('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3
    end


    it "qualquer item", :sample do

        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find ('.avenger-list')
        drop.all('option').sample.select_option
        sleep 3
    end
end

#neste ultimo teste ao inves de utilzar o find que trara apenas
#um unico item em especifico, podemos utilizar o metodo all que trara um array das opções.
#com o array o metodo sample ira sortear um desses elementos do array e em seguida seleciona-lo na caixa da lista como especifico