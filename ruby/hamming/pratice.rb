class Hamming

  def self.compute(dna_1, dna_2)
    return 0 if dna_1 == dna_2
    argument_errors(dna_1, dna_2)
    hamming_distance(dna_1.split(""), dna_2.split(""))
  end

  private

  def self.argument_errors(dna_1, dna_2)
    raise ArgumentError if dna_1.size != dna_2.size
  end

  def self.hamming_distance(dna_1, dna_2)
    distance = 0

    dna_1.zip(dna_2).count {|val1, val2| distance += 1 if val1 != val2
    }
    distance
  end
end

