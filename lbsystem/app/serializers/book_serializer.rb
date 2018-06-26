class BookSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :categories


  def url
    book_url(object)
  end
end
