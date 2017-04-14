class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :param, :url

  has_many :roles
end
