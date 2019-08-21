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
  def grade(grade)
    @roster[grade]
  end
  def sort
    sorted_students = {}
    roster.each do |x, y|
      sorted_students[x] = y.sort
    end
    sorted_students
  end


end
