require_relative './macros'


# Superclass for models to inherit from
class CustomMacroBase
    
    # Add the custom macro module methods as class methods
    extend GetterSetter
    extend Association

    # Add a class method for querying the `@@all` array in each class
    def self.all
        class_variable_get(:@@all)
    end

end
