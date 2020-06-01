describe "Validar o titulo da pagina", :hello do

  it "-> Quando abrir a pagina
      -> o titulo deve estar aparecendo corretamente" do

    visit "/"
  
    expect(page.title).to eql "Training Wheels Protocol" 
  end 
end