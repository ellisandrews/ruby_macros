module GetterSetter

    # Macro for creating both a reader and writer instance method for any number of instance attributes
    def attr_getter_and_setter(*attributes)
        
        attributes.each do |attribute|
            # Create the reader instance method
            define_method(attribute) do
                instance_variable_get("@#{attribute}")
            end

            # Create the writer instance method (that takes an argument of the value to set the attribute to)
            define_method("#{attribute}=") do |argument|
                instance_variable_set("@#{attribute}", argument)
            end
        end
    end
    
end


module Association

    # Macro for creating an instance method for accessing constiuents of a "has_many" relationship
    def has_many(consituents)

        define_method(consituents) do
            # Get the constant of the class to which the `consituents` symbol refers (e.g. :players --> Player)
            # NOTE: This is quick and dirty! Only works for single-word examples with normal 's' pluralization
            class_const = Kernel.const_get(consituents.to_s.chop.capitalize)

            # Get the name of the reader method on the constituent
            # NOTE: Again, this is quick and dirty! (e.g. Team --> "team")
            reader_method_name = self.class.to_s.downcase

            # Select all constituent instances that have the instance we're working with as one of their attributes
            # NOTE: This assumes `class_const.all` returns an array of all instances of `class_const`
            class_const.all.select { |consituent| consituent.send(reader_method_name) == self }
        end
    end

end
