describe "Validar o titulo da pagina" do

  it "-> Quando abrir a pagina
      -> o titulo deve estar aparecendo corretamente" do

    visit "https://training-wheels-protocol.herokuapp.com/"
  
    expect(page.title).to eql "Training Wheels Protocol" 
  end 
end