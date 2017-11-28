require 'rails_helper'

RSpec.describe Ability, type: :model do
  let(:ability){ FactoryBot.build(:ability) }
  it{ expect(described_class).to respond_to :collection_serialize }

  context "#belongs_to" do
    it{ expect(ability.hero).to be_a Hero }
  end

  context "#serialize" do
    it{ expect(ability).to respond_to :serialize }
  end
end
