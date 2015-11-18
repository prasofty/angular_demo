class FormSerializer < ActiveModel::Serializer
	attributes :id

	attribute :title, key: :xyz
end
