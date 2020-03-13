describe 'GET /cocktails/:id', type: :request do
  describe'successfull' do
    before do
      get '/api/v1/cocktails/16158'
    end

    it 'returns 200 status' do
      expect(response.status).to eq 200    
    end

    it 'returns correct cocktail name' do
      expect(JSON.parse(response.body)['drinks']['strDrink']).to eq 'Whitecap Margarita'    
    end

    #it 'returns 200 status' do
   #   expect(response.status).to eq 200    
   # end
  end
end