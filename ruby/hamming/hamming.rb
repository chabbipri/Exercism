class Hamming
  def self.compute(dna_1, dna_2)
    validate_args(dna_1, dna_2)
    return 0 if dna_1 == dna_2

    hamming_distance(dna_1.chars, dna_2.chars)
  end

  private

  def self.validate_args(dna_1, dna_2)
    raise ArgumentError if dna_1.size != dna_2.size
  end

  def self.hamming_distance(dna_1_array, dna_2_array)
    dna_1_array.zip(dna_2_array).count do
      |val1, val2| val1 != val2
    end
  end
end
