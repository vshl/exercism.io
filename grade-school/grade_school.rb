# frozen_string_literal: true

# Write your code for the 'Grade School' exercise in this file. Make the tests in
# `grade_school_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/grade-school` directory.
class School
  def initialize
    @grades = Hash.new { [] }
  end

  def students(grade)
    grades[grade]&.sort || []
  end

  def add(name, grade)
    grades[grade] <<= name
  end

  def students_by_grade
    grades.map { |k, v| { grade: k, students: v.sort } }
          .sort_by { |i| i[:grade] }
  end

  attr_reader :grades
end
