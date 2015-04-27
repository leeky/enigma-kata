class Rotor
  attr_reader :mapping

  def initialize(mapping:, start_position: "A")
    @mapping = create_mapping_array(mapping)
    @start_position = start_position
  end

  def translate_left(letter)
    (65 + @mapping[letter.ord - 65]).chr
  end

  def translate_right(letter)
    (65 + @mapping.index(letter.ord - 65)).chr
  end

  def rotate
    @mapping.rotate!(-1)
  end

  private

  def create_mapping_array(mapping)
    rotor_mappings_array = []
    rotor_mappings = mapping

    (0..25).each do |pos|
      rotor_mappings_array[pos] = rotor_mappings[pos].ord - 65
    end

    rotor_mappings_array
  end

end
