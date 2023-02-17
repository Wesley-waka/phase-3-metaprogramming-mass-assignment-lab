class Person


  def initialize(attribute)
    attribute.each do |key,value|
      self.class.attr_accessor(key)
      self.send("#{key}=",value)
    end

  end
  # your code here
end


susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }

susan = Person.new(susan_attributes)
susan.name      # => "Susan"
susan.height    # => "5'11""
susan.eye_color # => "Green"