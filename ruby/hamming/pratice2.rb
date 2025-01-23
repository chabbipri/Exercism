class Hamming
  def self.compute(dna_1, dna_2)
    return 0 if dna_1 == dna_2
    validate_arguments(dna_1, dna_2)

    calculate_distance(dna_1, dna_2)
  end

  private

  def self.validate_arguments(dna_1, dna_2)
    raise ArgumentError if dna_1.empty? || dna_2.empty?
    raise ArgumentError if dna_1.size != dna_2.size
  end

  def self.calculate_distance(dna_1, dna_2)
    distance = 0

    dna_1.size.times do |i|
      distance += 1 if dna_1[i] != dna_2[i]
    end

    distance
  end
end