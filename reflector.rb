class Reflector
  attr_reader :mapping

  def initialize(mapping:)
    @mapping = create_mapping_hash(mapping)
  end

  def translate(letter)
    (65 + @mapping[letter.ord - 65]).chr
  end

  private

  def create_mapping_hash(mapping)
    reflector_mappings_hash = []
    reflector_mappings = mapping

    (0...25).each do |pos|
      reflector_mappings_hash[pos] = reflector_mappings[pos].ord - 65
    end

    reflector_mappings_hash
  end
end
