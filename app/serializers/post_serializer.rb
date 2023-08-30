class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :tags, :author

  has_many :tags, serializer: PostTagSerializer
  belongs_to :author
end
