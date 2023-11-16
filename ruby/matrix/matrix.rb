class Matrix < Struct.new(:matrix_data)
  def column(column_index)
    (1..rows.size).map do |row_index|
      row(row_index)[column_index - 1]
    end
  end

  def row(row_index)
    rows[row_index - 1]
  end

  private

  def rows
    matrix_data.split("\n").map do |row|
      row.split(" ").map(&:to_i)
    end
  end
end 