require 'rails_helper'
describe LocationsController do
  let!(:location) {Location.create(name: "Ryan", address: "boomboom")}
  
  it "GET #index" do
    sign_in
    get :index
    expect(assigns(:locations).class).to eq(Location::ActiveRecord_Relation)
  end  

  it "GET #new" do
    sign_in
    get :new
    expect(assigns(:location).class).to eq(Location)
    expect(assigns(:location).new_record?).to eq(true)
  end
  describe "POST #create" do
    it 'successful creation' do
      sign_in
      expect {
        post :create, location: { name: "Anna", address: "Up the street"}
      }.to change(Location, :count).by(1)
      expect(assigns(:location).class).to eq(Location)
      expect(response).to redirect_to locations_path
    end
    it 'failed creation' do
      sign_in
      expect {
        post :create, location: {name: ""}
      }.not_to change(Location, :count)
      expect(response).to render_template :new
    end
  end
  describe "GET #edit" do
    it 'should find an object' do
      sign_in
      get :edit, id: location
      expect(assigns(:location)).to eq(location)
      expect(assigna(:location).class).to eq(Location)
    end
  end
  describe "GET #show" do
    it 'should find an object' do
      sign_in
      get :show, id: location
      expect(assigns(:location)).to eq(location)
      expect(assigna(:location).class).to eq(Location)

    end
  end
end