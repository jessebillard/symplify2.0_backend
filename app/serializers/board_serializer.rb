class BoardSerializer < ActiveModel::Serializer
    attributes :title, :list_order, :lists    
end