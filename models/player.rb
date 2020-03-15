require_relative '../macros/base'


class Player < CustomMacroBase

    # Custom macros!
    attr_getter_and_setter :name, :number, :team

    @@all = []

    def initialize(name, number, team)
        @name = name
        @number = number
        @team = team
        @@all << self  # Keep track of created instances
    end

end
