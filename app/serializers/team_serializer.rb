class TeamSerializer < ActiveModel::Serializer
  attributes :id, :abbreviation, :city, :conference, :division, :full_name, :name
  has_many :users
end
