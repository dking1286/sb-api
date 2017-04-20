class RoleSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :company
  has_many :skills
end
