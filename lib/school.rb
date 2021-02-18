# code here!

require 'pry'

class School

    attr_reader :roster
    
    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        
        else
        @roster[grade] = []
        @roster[grade] << name

        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster={}
        @roster.each {|key, value| sorted_roster[key] = value.sort}
        sorted_roster
    end
end

# mtg = School.new("Mount Greylock")
# mtg.add_student("George",12)
# mtg.add_student("Emily",12)
