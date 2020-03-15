describe 'GET /cocktails/:id', type: :request do
  before do
    get '/api/v1/cocktails/16158'
  end

  it 'returns 200 status' do
    expect(response.status).to eq 200    
  end

  it 'returns correct cocktail name' do
    expect(JSON.parse(response.body)['drinks'].first['name']).to eq 'Whitecap Margarita'
  end

  it 'returns drink id' do
    expect(JSON.parse(response.body)["drinks"].first["id"]).to eq "16158"
  end

  it 'returns drink Category' do
    expect(JSON.parse(response.body)["drinks"].first["category"]).to eq "Other/Unknown"
  end

  it 'returns drink IBA' do
    expect(JSON.parse(response.body)["drinks"].first["IBA"]).to eq nil
  end

  it 'returns drink Glass type' do
    expect(JSON.parse(response.body)["drinks"].first["glass"]).to eq "Margarita/Coupette glass"
  end

  it 'returns Instructions' do
    expect(JSON.parse(response.body)["drinks"].first["instructions"]).to eq "Place all ingredients in a blender and blend until smooth. This makes one drink."
  end

  it 'returns drink Image' do
    expect(JSON.parse(response.body)["drinks"].first["image"]).to eq "https://www.thecocktaildb.com/images/media/drink/srpxxp1441209622.jpg"
  end

  it 'returns 1st ingredient for a drink' do
    expect(JSON.parse(response.body)["drinks"].first["ingredients"][0]["name"]).to eq "Ice"
  end

  it 'returns 1st measurment for a drink' do
    expect(JSON.parse(response.body)["drinks"].first["ingredients"][0]["measure"]).to eq "1 cup "
  end

  it 'returns correct number of ingredients' do
    expect(JSON.parse(response.body)["drinks"].first["ingredients"].count).to eq 4
  end

  it 'returns number of drinks' do
    expect(JSON.parse(response.body)["drinks"].count).to eq 1
  end
end