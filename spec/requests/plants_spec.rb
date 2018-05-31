require "rails_helper"

describe 'Plants API' do
  before :each do  
    user = create(:user)
    @plant = create(:plant, user: user)
  end

  it "GET /plants/:id" do
    get "/plants/#{@plant.id}"

    expect(response).to be_success
    parsed = JSON.parse(response.body, symbolize_names: true)
    expect(parsed[:name]).to eq(@plant.name)
    expect(parsed[:sci_name]).to eq(@plant.sci_name)
    expect(parsed[:img]).to eq(@plant.img)
  end

  it "has a 200 status code" do
    get "/plants"
    expect(response.status).to eq(200)
  end

  it "POST /plants" do
    plant = {plant: {name: "Opakawagalaga", sci_name: "Eupanifahorious", img: "URLHERE"}}
    post users_path, :params => plant

    # expect(response).to be_success
    binding.pry 
    parsed = JSON.parse(response.body, symbolize_names: true)
    expect(parsed[:name]).to eq(plant.name)
    expect(parsed[:sci_name]).to eq(plant.sci_name)
    expect(parsed[:img]).to eq(plant.img)
  end

  it "has a 201 status code" do
    post "/plants"
    expect(response.status).to eq(201)
  end

end


# GET /plants
# GET /plants/:id

