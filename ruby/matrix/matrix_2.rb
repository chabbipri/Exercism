class Matrix
  attr_reader :matrix

  def initialize(matrix)
    @matrix = matrix.split("\n")
  end

  def row(index)
    matrix[index - 1].split(" ").map(&:to_i)
  end

  def column(col_index)
    column = []
    row_number = 1

    matrix.size.times do
      column << row(row_number)[col_index - 1]
      row_number += 1
    end

    column
  end
end