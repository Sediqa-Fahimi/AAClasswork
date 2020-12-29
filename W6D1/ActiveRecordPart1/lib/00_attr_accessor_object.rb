class AttrAccessorObject
  def self.my_attr_accessor(*names)
    str_names = names.map { |nam| nam.to_s}
    str_names.each do |name|
      define_method(name) do 
        self.instance_variable_get("@#{name}")
      end
      setter = name + "="
      define_method(setter) do |value|
        self.instance_variable_set("@#{name}", value)
      end
    end
  end
end
# def age=(value)
#   @age = value
# end