# code here!
class School
  attr_accessor :roster
  attr_reader

  def initialize(roster)
    @roster = {}
  end
  def add_student(student,year)
    if @roster[year]
      @roster[year] << student
    else
      @roster[year] = []
      @roster[year] << student
    end
  end
  def grade(year)
    roster.detect do |x, y|
      if x == year
         return y
      end
    end
  end
  def sort
    sorted_students = {}
    roster.each do |x, y|
      sorted_students[x] = y.sort
    end
    sorted_students
  end


end
