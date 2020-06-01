describe 'upload', :upload do

#  Para este sript que necessita de acesso ao diretorio de arquivos 
#  e imagens, e aconselhavel que fique alocado no disco C para maior facilidade
#  de encontrar os arquivos na hora do upload. Isto somente em SO windows.

    before(:each) do
        visit '/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd +  '/spec/fixtures/imagem.png'
    end

    it "upload de texto" do

        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end


    it "upload de imagem" do

        attach_file('file-upload', @imagem)
        click_button 'Upload'

        img = find('#new-image')
        expect(img[:src]).to include '/uploads/imagem.png'
    end

    after(:each) do
        sleep 5
    end 
end 
