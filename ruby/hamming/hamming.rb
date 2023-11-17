class Hamming

  def self.compute(dna_1, dna_2)
    argument_error_check(dna_1, dna_2)

    return 0 if dna_1 == dna_2

    if dna_1 != dna_2
      v = fetch_hamming_distance(dna_1.split(""), dna_2.split(""))
    end
  end

  private

  def self.fetch_hamming_distance(dna_1_array, dna_2_array)
    dna_1_array.zip(dna_2_array).map do
      |val1, val2| val1 if val1 != val2
    end.compact.size
  end

  def self.argument_error_check(dna_1, dna_2)
    raise ArgumentError if dna_1.size != dna_2.size
  end
end
