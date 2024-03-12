require 'pry'

class Matrix
  attr_reader :matix

  def initialize(matix)
    @matix = matix.split("\n")
  end

  def row(row_index)
    matix[row_index - 1].split(" ").map(&:to_i)
  end

  def column(column_index)
    column = []
    row_number = 1
    matix.size.times do
      column << row(row_number)[column_index-1]
      row_number += 1
    end
    column
  end
end
