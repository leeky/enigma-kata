require_relative 'machine'
require_relative 'rotor'
require_relative 'reflector'

#        ABCDEFGHIJKLMNOPQRSTUVWXYZ
I =     "EKMFLGDQVZNTOWYHXUSPAIBRCJ"
II =    "AJDKSIRUXBLHWTMCQGZNPYFVOE"
III =   "BDFHJLCPRTXVZNYEIWGAKMUSQO"

UKW_A = "EJMZALYXVBWFCRQUONTSPIKHGD"
UKW_B = "YRUHQSDLPXNGOKMIEBFZCWVJAT"
UKW_C = "FVPJIAOYEDRZXWGCTKUQSBNMHL"

# Testing
R1 = Rotor.new(mapping: I)
R2 = Rotor.new(mapping: III)
R3 = Rotor.new(mapping: II)

TEST_ROTORS = [R1, R2, R3]
TEST_REFLECTOR = Reflector.new(mapping: UKW_A)
