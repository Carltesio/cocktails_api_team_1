RSpec.describe Api::V1::ProductsController, type: :request do
  describe "GET /api/alcohols successfully" do
    before do
      get "/api/v1/products",
      params: {
        q: "Vodka"
      }
    end

    it "should return a 200 response" do
      expect(response).to have_http_status 200
    end

    it "should return a correct name of first product" do
      expect(JSON.parse(response.body)["results"][0]["name"]).to eq '1850'
    end

    it "should return  product's ID" do
      expect(JSON.parse(response.body)["results"][0]["id"]).to eq '799020'
    end

    it "should return product's number" do
      expect(JSON.parse(response.body)["results"][0]["number"]).to eq '8708201'
    end

    it "should return product's Price" do
      expect(JSON.parse(response.body)["results"][0]["price"]).to eq 362.0
    end

    it "should return product's Country" do
      expect(JSON.parse(response.body)["results"][0]["country"]).to eq 'Sverige'
    end

    it "should return product's Volume" do
      expect(JSON.parse(response.body)["results"][0]["volume"]).to eq 700.0
    end

    it "should return product's name_2" do
      expect(JSON.parse(response.body)["results"][0]["name_2"]).to eq 'Vodka'
    end

    it "should return product's Category" do
      expect(JSON.parse(response.body)["results"][0]["category"]).to eq 'Sprit'
    end

    it "should return product's ProducerName" do
      expect(JSON.parse(response.body)["results"][0]["producer"]).to eq 'Tevsjö Destilleri Järvsö AB'
    end

    it "should return product's ProductNumber" do
      expect(JSON.parse(response.body)["results"][0]["number"]).to eq '8708201'
    end

    it 'returns correct number of elements' do
      expect(JSON.parse(response.body)["results"][0].count).to eq 10
    end

    it "should return product's Image" do
      expect(JSON.parse(response.body)["results"][0]["image"]).to eq 'https://static.systembolaget.se/imagelibrary/publishedmedia/dapdo8jq0ivgyr9pkkhl/799020.jpg'
    end
  end
end