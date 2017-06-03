(**
   Module définissant un codage binaire préfixe pour l'alphabet source des 256 octets.
   
   @author FIL - IEEA - Univ. Lille 1 (oct 2010)
*)


open Codage
  
let alphabet_source = 
  Array.init 256 (function x -> x)


let code = [|
  "01000011011011001001" ;
  "01000011011010010101" ;
  "01000010000111010001" ;
  "01000011011011010100" ;
  "01000011011011001111" ;
  "01000011011010010100" ;
  "01000010000111110110" ;
  "01000011011011001000" ;
  "01000010000111110111" ;
  "01000010000111010000" ;
  "01000011011010110101" ;
  "01000011011010110100" ;
  "01000011011011010101" ;
  "01000011011010111011" ;
  "01000011011010111010" ;
  "01000011011010101010" ;
  "01000011011011001110" ;
  "01000011011010101011" ;
  "01000011011010110001" ;
  "01000011011010110000" ;
  "01000011011011010000" ;
  "01000011011010101101" ;
  "01000011011010101100" ;
  "01000011011011010010" ;
  "01000011011010110111" ;
  "01000011011010100001" ;
  "01000011011010001001" ;
  "01000011011010101110" ;
  "010000100001001000001" ;
  "010000100001001000111" ;
  "010000100001001000110" ;
  "01000011011010001000" ;
  "000" ;
  "0010100100" ;
  "010000100001010" ;
  "01000011011010100010" ;
  "01000011011011010001" ;
  "01000011011010101111" ;
  "01000011011010100000" ;
  "0010101" ;
  "010000100001011010" ;
  "01000010000110100" ;
  "01000010000111010010" ;
  "01000010000111010011" ;
  "001100" ;
  "10010011" ;
  "0100000" ;
  "01000011011011011" ;
  "01000010000111000" ;
  "0100001000011000" ;
  "010000100001011101" ;
  "0100001000011101010" ;
  "010000100001011000" ;
  "010000100001101010" ;
  "010000100001001001" ;
  "0100001000010111001" ;
  "01000010000110010" ;
  "01000010000101111" ;
  "01000010011" ;
  "1001010010" ;
  "01000010000100111" ;
  "010000100001011001" ;
  "01000010000100101" ;
  "00101000111" ;
  "0100001101101101011" ;
  "00101000001" ;
  "001010001010" ;
  "0010100001" ;
  "0100001110" ;
  "100100100" ;
  "0100001101111" ;
  "0100001101100" ;
  "010000110100" ;
  "0100001100" ;
  "01000011111" ;
  "0100001000010110111" ;
  "0010100101" ;
  "100101100" ;
  "010000100010" ;
  "10010100110" ;
  "00101000110" ;
  "010000110101" ;
  "010000100101" ;
  "01000011110" ;
  "10010100111" ;
  "010000100100" ;
  "10010110110" ;
  "010000100001001000000" ;
  "010000100001101011" ;
  "010000100001110111" ;
  "0100001101110" ;
  "01000010000111011001" ;
  "01000011011010110110" ;
  "01000011011011010011" ;
  "01000011011010100011" ;
  "0100001000010111000" ;
  "0100001000011100110" ;
  "0101" ;
  "0100111" ;
  "001011" ;
  "10011" ;
  "101" ;
  "0100100" ;
  "0100101" ;
  "0100110" ;
  "0111" ;
  "010000101" ;
  "010000100001000" ;
  "00100" ;
  "001101" ;
  "1100" ;
  "00111" ;
  "010001" ;
  "1001000" ;
  "1101" ;
  "0110" ;
  "1000" ;
  "1111" ;
  "111001" ;
  "01000010000110011" ;
  "10010111" ;
  "100101000" ;
  "1001011010" ;
  "01000011011010011100" ;
  "01000011011010011101" ;
  "01000010000111111010" ;
  "01000011011010011111" ;
  "01000011011010000000" ;
  "01000011011010000001" ;
  "01000011011010011110" ;
  "01000010000111101011" ;
  "01000010000111101000" ;
  "01000010000111101001" ;
  "01000010000111101010" ;
  "01000010000111111011" ;
  "01000010000111111000" ;
  "01000010000111111001" ;
  "01000011011010000011" ;
  "01000010000110110101" ;
  "01000011011011000010" ;
  "01000011011011000011" ;
  "01000010000110110100" ;
  "01000010000110110001" ;
  "01000010000110110110" ;
  "01000010000110110111" ;
  "01000011011011000100" ;
  "01000011011011000101" ;
  "01000011011010000010" ;
  "01000011011011000111" ;
  "01000011011011000000" ;
  "01000011011011000001" ;
  "01000011011011000110" ;
  "01000011011010000110" ;
  "01000010000111100110" ;
  "01000010000111100111" ;
  "01000010000111100100" ;
  "0100001000010011010" ;
  "01000010000111100001" ;
  "01000010000111100010" ;
  "01000010000111100011" ;
  "10010101" ;
  "01000010000111100000" ;
  "00101000100" ;
  "01000010000111001001" ;
  "01000010000111001110" ;
  "01000010000111001111" ;
  "01000010000111001000" ;
  "00101000000" ;
  "001010011" ;
  "111000" ;
  "100100101" ;
  "010000100001001100" ;
  "01000010000111100101" ;
  "01000010000111001010" ;
  "010000100011" ;
  "010000110110111" ;
  "01000010000111001011" ;
  "01000010000111101101" ;
  "01000011011010001111" ;
  "01000011011010001100" ;
  "010000100000" ;
  "01000011011010001101" ;
  "01000011011010001110" ;
  "01000011011010000111" ;
  "01000011011010000100" ;
  "001010001011" ;
  "01000011011010000101" ;
  "10010110111" ;
  "01000010000111101110" ;
  "01000010000111101111" ;
  "01000010000111101100" ;
  "01000010000111111101" ;
  "01000010000111111110" ;
  "01000010000111111111" ;
  "0100001000010110110" ;
  "11101" ;
  "01000010000111111100" ;
  "01000011011010100111" ;
  "01000011011010101001" ;
  "01000011011010101000" ;
  "01000010000111110101" ;
  "01000010000111010110" ;
  "01000011011010111111" ;
  "01000011011010100110" ;
  "01000011011010100101" ;
  "01000011011010111000" ;
  "010000100001001000011" ;
  "01000010000111110100" ;
  "01000011011010010001" ;
  "01000011011010010000" ;
  "01000011011010100100" ;
  "01000011011010111110" ;
  "01000010000111011010" ;
  "01000010000111011000" ;
  "01000010000111011011" ;
  "01000011011010110010" ;
  "01000011011011001011" ;
  "01000011011011001010" ;
  "01000011011010110011" ;
  "01000011011010001010" ;
  "01000011011010010111" ;
  "01000011011010010110" ;
  "01000011011010001011" ;
  "01000011011011001100" ;
  "01000010000111010111" ;
  "01000011011011001101" ;
  "01000011011010111001" ;
  "01000010000110111011" ;
  "01000010000110111000" ;
  "01000010000110111001" ;
  "01000010000110111010" ;
  "01000010000111110011" ;
  "01000010000111110000" ;
  "01000010000111110001" ;
  "01000010000110110010" ;
  "01000010000110110011" ;
  "01000010000110110000" ;
  "01000011011010011001" ;
  "01000011011010011010" ;
  "01000011011010011011" ;
  "01000011011010011000" ;
  "01000010000111110010" ;
  "01000011011010111100" ;
  "010000100001001000010" ;
  "01000011011010111101" ;
  "010000100001001000100" ;
  "01000011011010010011" ;
  "01000011011010010010" ;
  "010000100001001000101" ;
  "01000010000110111111" ;
  "01000010000110111100" ;
  "01000010000110111101" ;
  "01000010000110111110" ;
  "01000010000100110111" ;
  "010000100001001101100" ;
  "010000100001001101101"|]
         
let un_codage = creer alphabet_source code         
   