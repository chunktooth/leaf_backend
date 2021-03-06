require "rails_helper"

describe 'Users API' do
  before :each do
    @user = create(:user)
  end

  it "GET /users/:id" do
    get "/users/#{@user.id}"

    expect(response).to be_success
    parsed = JSON.parse(response.body, symbolize_names: true)
    expect(parsed[:name]).to eq(@user.name)
    expect(parsed[:username]).to eq(@user.username)
    expect(parsed[:password]). to eq nil
  end

  it "has a 200 status code" do
    get "/users"
    expect(response.status).to eq(200)
  end

  it "POST /users" do
    post users_path, params: {user: {name: "Opakawagalaga", username: "Eupanifahorious", password: "This is mah password"}}

    expect(response).to be_success
    parsed = JSON.parse(response.body, symbolize_names: true)
    expect(parsed[:name]).to eq("Opakawagalaga")
    expect(parsed[:username]).to eq("Eupanifahorious")
    expect(parsed[:password]). to eq nil
  end

  it "DELETE /users" do
    delete "/users/#{@user.id}"
    expect(response.status).to eq(204)
  end

end


# GET /users
# GET /users/:id
