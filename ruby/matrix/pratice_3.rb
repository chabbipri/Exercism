class Matrix
  attr_reader :matix

  def initialize(matix)
    @matix = matix.split("\n")
  end

  def row(row_number)
    row = matix[row_number - 1]
    row.split(" ").map(&:to_i)
  end

  def column(number)
    col = []

    matix.size.times do |i|
      row = row(i+1)
      col << row[number - 1]
    end

    col
  end

end