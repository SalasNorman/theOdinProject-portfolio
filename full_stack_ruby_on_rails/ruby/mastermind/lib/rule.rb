class Rule
  def correct_position_guess(secret_code, guess, remaining_guess, remaining_secret_code, feedback)
    guess.each_with_index do |element, index|
      if secret_code[index] == element
        feedback << '+'
      else
        remaining_guess << element
        remaining_secret_code << secret_code[index]
      end
    end
  end

  def correct_guess(remaining_guess, remaining_secret_code, feedback)
    remaining_guess.each do |element|
      feedback << '-' if remaining_secret_code.include?(element)
    end
  end
end
