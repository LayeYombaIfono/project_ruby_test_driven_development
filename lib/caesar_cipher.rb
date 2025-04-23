def caesar_cipher(string, shift)
  result = ""

  string.each_char do |char|
    if char =~ /[A-Za-z]/
      base = char.ord < 91 ? 'A'.ord : 'a'.ord
      # Appliquer le décalage et boucler dans l'alphabet
      shifted = ((char.ord - base + shift) % 26) + base
      result << shifted.chr
    else
      result << char
    end
  end

  result
end
