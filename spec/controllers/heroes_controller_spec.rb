require 'rails_helper'

RSpec.describe HeroesController, type: :controller do
  before do
    FactoryBot.create_list(:hero, 10)
  end
  context "#index" do
    before do
      get :index
      @response = JSON.parse(response.body)
    end
    it { expect(@response["total"]).to eq 10 }
    it { expect(@response["data"].size).to eq 10 }
  end

  context "#show" do
    before do
      get :show, params: { id: Hero.first }
      @response = JSON.parse(response.body)
    end
    it { expect(@response).to have_key "id" }
    it { expect(@response).to have_key "name" }
    it { expect(@response).to have_key "real_name" }
    it { expect(@response).to have_key "health" }
    it { expect(@response).to have_key "armour" }
    it { expect(@response).to have_key "shield" }
  end
end
