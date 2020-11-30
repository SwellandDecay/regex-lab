require 'pry'

def starts_with_a_vowel?(word)
    /\A[aeiouAEIOU]/ === word
end

def words_starting_with_un_and_ending_with_ing(text)
    text = text
    text.scan(/un+\w+ing/)
end

def words_five_letters_long(text)
    text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)

    if /[A-Z]/ === text[0] &&  /[.,?:;!]/ === text[-1]
        return true
    else
        return false 
    end

end

def valid_phone_number?(phone)
    /\d{3}\D*\d{3}\D*\d{4}/ === phone
end
