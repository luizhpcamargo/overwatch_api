require 'rails_helper'

RSpec.describe AbilitiesController, type: :controller do
  before do
    FactoryBot.create_list(:ability, 10)
  end
  context "#index" do
    before do
      get :index
      @response = JSON.parse(response.body)
    end
    it { expect(@response["total"]).to eq 10 }
    it { expect(@response["data"].size).to eq 10 }
  end

  context "#index by hero" do
    before do
      get :index, params: { hero_id: Hero.first }
      @response = JSON.parse(response.body)
    end
    it { expect(@response["total"]).to eq 1 }
    it { expect(@response["data"].size).to eq 1 }
  end

  context "#show" do
    before do
      get :show, params: { id: Ability.first }
      @response = JSON.parse(response.body)
    end

    it { expect(@response).to have_key "id" }
    it { expect(@response).to have_key "name" }
    it { expect(@response).to have_key "description" }
    it { expect(@response).to have_key "is_ultimate" }
    it { expect(@response).to have_key "hero" }
    it { expect(@response["hero"]).to have_key "id" }
    it { expect(@response["hero"]).to have_key "name" }
    it { expect(@response["hero"]).to have_key "real_name" }
    it { expect(@response["hero"]).to have_key "health" }
    it { expect(@response["hero"]).to have_key "armour" }
    it { expect(@response["hero"]).to have_key "shield" }
  end
end
