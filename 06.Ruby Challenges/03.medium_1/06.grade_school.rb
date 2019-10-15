# Problem
# Write a small acrching program that stores student's names along with the grade they are in.


# add
    # If the grade is already in the school, add the name to the grade
    # If the grade is not already in the school, make it, then add the name to the grade

# to_h

# grade()


class School
  def initialize
    @school = Hash.new([])
  end

  def add(name, grade)
    if school.keys.include?(grade)
      school[grade] << name 
    else  
      school[grade] = [name]
    end
  end

  def grade(grade_num)
    school[grade_num]
  end

  def to_h
    school.each {|key, value| value.sort!}
    school.sort.to_h
  end

  private
  attr_accessor :school
end

