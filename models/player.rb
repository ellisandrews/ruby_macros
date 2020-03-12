require_relative '../macros/base'


class Player < CustomMacroBase

    # Custom macros!
    attr_getter_and_setter :name, :number, :team

    @@all = []

    def initialize(name, number, team)
        @name = name
        @number = number
        @team = team
        @@all << self
    end

    # # Define a new class method
    # def self.custom_class_method
    #     puts "Called: #{self}.custom_class_method"
    # end

    # # Call the class method defined above
    # self.custom_class_method
    # # prints "Called: #{self}.custom_class_method"

end
