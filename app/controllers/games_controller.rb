class GamesController < ApplicationController
  def new
    @letters = 10.times.map{("A".."Z").to_a.sample(1)}
    # puts @letters
    # raise
  end

  def score
    original_letters = params[:letters].scan /\w/
    @word = params[:word]
    word_letters = @word.scan /\w/
    correct_word = true
    word_letters.each |letter| do
      if original_letters.include?(letter)
        original_letters.delete_at(original_letters.index(letter))
      else
        return correct_word = false
      end
    end
    if correct_word ?
  end
end
