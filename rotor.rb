class Rotor
  MAPPINGS = {
    #         ABCDEFGHIJKLMNOPQRSTUVWXYZ
    "I" =>   "EKMFLGDQVZNTOWYHXUSPAIBRCJ",
    "II" =>  "AJDKSIRUXBLHWTMCQGZNPYFVOE",
    "III" => "BDFHJLCPRTXVZNYEIWGAKMUSQO",
  }

  attr_reader :mapping

  def initialize(mapping:, start_position: "A")
    @mapping = create_mapping_hash(mapping)
    @start_position = start_position
  end

  def translate_left(letter)
    (65 + @mapping[letter.ord - 65]).chr
  end

  def translate_right(letter)
    (65 + @mapping.key(letter.ord - 65)).chr
  end

  def rotate
    @mapping.rotate!(-1)
  end

  private

  def create_mapping_hash(mapping)
    rotor_mappings_hash = {}
    rotor_mappings = MAPPINGS[mapping]

    (0...25).each do |pos|
      rotor_mappings_hash[pos] = rotor_mappings[pos].ord - 65
    end

    rotor_mappings_hash
  end

end
