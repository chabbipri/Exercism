require 'pry'

class Matrix
  attr_reader :matix

  def initialize(string)
    @matix = string_to_matrix_array(string)
  end

  def row(number)
    matix[number - 1]
  end

  def column(number)
    matix.map { |row| row[number - 1]}
  end

  private

  def string_to_matrix_array(string)
    array_of_array = string.split("\n").map{ |r| r.split(" ")}
    array_of_array.map do |row|
      row.map {|ele| ele.to_i}
    end
  end
end