require 'jsonapi-serializers'
class StudentSerializer 
  include JSONAPI::Serializer
  
  def attributes
  	data = super
  	data[:name] = object.name
    data[:email] = object.email
    data[:book] = object.books
    data
  end
  #attributes :name , :email , :city

  def self_link
    return nil
  end

end
