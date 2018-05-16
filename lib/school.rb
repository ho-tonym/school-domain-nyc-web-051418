require "pry"

class School

  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, number)
    current = []
    if @roster[number] != nil
      current = @roster[number]
    end
    @roster[number] = current << student
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |number, student_names|
      student_names.sort!
      binding.pry
    end
  end
end
