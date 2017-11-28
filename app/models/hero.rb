class Hero < ApplicationRecord
  has_many :abilities

  class << self
    include ModelSerializer
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
