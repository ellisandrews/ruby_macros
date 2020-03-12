require_relative '../macros/base'


class Team < CustomMacroBase

    # Custom macros!
    attr_getter_and_setter :name, :stadium
    has_many :players

    @@all = []

    def initialize(name, stadium)
        @name = name
        @stadium = stadium
        @@all << self  # Keep track of created instances
    end

end
