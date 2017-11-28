class Ability < ApplicationRecord
  belongs_to :hero

  class << self
    include ModelSerializer
  end

  def serialize
    {
      id: id,
      name: name,
      description: description,
      is_ultimate: is_ultimate?,
      hero: hero.serialize
    }
  end
end
