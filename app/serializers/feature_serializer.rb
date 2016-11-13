class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :tfeatures
end
