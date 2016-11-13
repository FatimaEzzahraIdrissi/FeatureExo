class TfeatureSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :feature
end
