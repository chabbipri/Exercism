require 'minitest/autorun'
# require_relative 'matrix'
# require_relative 'matrix_pratice'
# require_relative 'matrix_2'
# require_relative 'pratice_3'
  require_relative 'pratice'


class MatrixTest < Minitest::Test
  def test_extract_row_from_one_number_matrix
    matrix = Matrix.new("1")
    assert_equal [1], matrix.row(1)
  end

  def test_can_extract_row
    matrix = Matrix.new("1 2\n3 4")
    assert_equal [3, 4], matrix.row(2)
  end

  def test_extract_row_where_numbers_have_different_widths
    matrix = Matrix.new("1 2\n10 20")
    assert_equal [10, 20], matrix.row(2)
  end

  def test_can_extract_row_from_non_square_matrix_with_no_corresponding_column
    matrix = Matrix.new("1 2 3\n4 5 6\n7 8 9\n8 7 6")
    assert_equal [8, 7, 6], matrix.row(4)
  end

  def test_extract_column_from_one_number_matrix
    matrix = Matrix.new("1")
    assert_equal [1], matrix.column(1)
  end

  def test_can_extract_column
    matrix = Matrix.new("1 2 3\n4 5 6\n7 8 9")
    assert_equal [3, 6, 9], matrix.column(3)
  end

  def test_can_extract_column_from_non_square_matrix_with_no_corresponding_row
    matrix = Matrix.new("1 2 3 4\n5 6 7 8\n9 8 7 6")
    assert_equal [4, 8, 6], matrix.column(4)
  end

  def test_extract_column_where_numbers_have_different_widths
    matrix = Matrix.new("89 1903 3\n18 3 1\n9 4 800")
    assert_equal [1903, 3, 4], matrix.column(2)
  end
end
