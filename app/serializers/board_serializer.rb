class BoardSerializer < ActiveModel::Serializer
    attributes :id, :title, :list_order, :lists
end