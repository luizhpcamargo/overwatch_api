require 'rails_helper'

RSpec.describe Hero, type: :model do
  let(:hero){ FactoryBot.build(:hero) }
  it{ expect(described_class).to respond_to :collection_serialize }

  context "#has_many" do
    it { expect(hero.abilities.build).to be_a Ability }
  end

  context "#serialize" do
    it{ expect(hero).to respond_to :serialize }
  end
end
