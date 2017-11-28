class Hero < ApplicationRecord
  def self.collection_serialize(heroes = Hero.all)
    {
      total: heroes.size,
      data: heroes.map do |hero|
        hero.serialize
      end
    }
  end

  def serialize
    {
      id: id,
      name: name,
      real_name: real_name,
      health: health,
      armour: armour,
      shield: shield
    }
  end
end
