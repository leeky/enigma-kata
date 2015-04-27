class Machine
  def initialize(rotors:, reflector:, message: 'HELLOWORLD')
    @rotors = rotors
    @reflector = reflector
    @message = message
  end

  def run
    @message.chars.collect do |char|
      current_char = char

      puts "-" * 40
      puts "INPUT: #{current_char}"

      @rotors.each do |rotor|
        current_char = rotor.translate_left(current_char)
        puts "ROTOR: #{rotor} --> #{current_char}"
      end

      current_char = @reflector.translate(current_char)
      puts "REFLECTOR --> #{current_char}"

      @rotors.reverse.each do |rotor|
        current_char = rotor.translate_right(current_char)
        puts "ROTOR: #{rotor} --> #{current_char}"
      end

      current_char
    end
  end
end
