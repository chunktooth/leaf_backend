class PlantSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :user_id, :name, :sci_name, :img
end
