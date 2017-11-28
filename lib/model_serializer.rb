module ModelSerializer
  def collection_serialize(collection)
    {
      total: collection.size,
      data: collection.map do |element|
        element.serialize
      end
    }
  end
end
