
def shift_cipher(string,shift)
    cipher_array = []
    # split string into array
    str_array = string.split("")

    # loop over each char
    str_array.each do |char|
        # continue if space
        unless char.match?(/[[:alpha:]]/)
            cipher_array << char
            next
        end
        # check case
        up_case = char == char.upcase
        # .ord
        ord_num = char.ord
        # shift
        ord_num += shift
        # loop
        while ord_num > 122
            ord_num = 97 + (ord_num - 123)
        end
        # .chr
        new_char = ord_num.chr
        # restore case
        new_char = new_char.upcase if up_case == true
        # append to string
        cipher_array << new_char
    end

    cipher_word = cipher_array.join('')
    puts cipher_word
    cipher_word
end

puts "Enter string"
user_str = gets.chomp

puts "Enter shift number"
user_shift = gets.chomp.to_i

shift_cipher(user_str,user_shift)