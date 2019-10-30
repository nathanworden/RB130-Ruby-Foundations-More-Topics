# Problem
# Write a program that computes Pascal's triangle up to a given number of rows
# Input: An integer (the number of rows)
# Output:
    # The ability to output all rows an an array of arrays
    # The ability to output the last row as a single array

# Data Structure
# Array

# Rules
    # The first and last element of every array will be 1
    # Always start the triangle off with [[1], [1, 1]]
    # The next row will always be 1 elements longer than the row before it
    # To create a new row:
        # Look at the previous row and add together each set of 2
            # push that to a new array
        # Add a 1 to the front and back of that array
    # Do this until you have the same number of elements in your overall array as the input integer.

# require 'pry'

  # class Triangle
  #   def initialize(num_rows)
  #     @num_rows = num_rows
  #   end

  #   def rows
  #     return [[1]] if @num_rows == 1

  #     output = [[1], [1, 1]]
  #     previous_row = 1
  #     until output.size == @num_rows
  #       new_row = []

  #       first = 0
  #       second = 1
  #       until new_row.size == output[previous_row].size - 1
  #         new_row << output[previous_row][first] + output[previous_row][second]
  #         first += 1
  #         second += 1
  #       end
  #       new_row.unshift(1)
  #       new_row << 1
  #       output << new_row
  #       previous_row += 1
  #     end
  #     output
  #   end

  #   def last
  #     rows[-1]
  #   end
  # end

  # ---------------------------------------------------------------------------
 class Triangle
    def initialize(num_rows)
      @num_rows = num_rows
    end

    def rows
      return [[1]] if @num_rows == 1

      output = [[1], [1, 1]]
      previous_row = 1
      until output.size == @num_rows
        new_row = []
        output[previous_row].each_cons(2) {|duo| new_row << duo.reduce(:+)}
        new_row.unshift(1)
        new_row << 1
        output << new_row
        previous_row += 1
      end
      output
    end

    def last
      rows[-1]
    end
  end


# binding.pry
  triangle = Triangle.new(1)
  p triangle.rows


