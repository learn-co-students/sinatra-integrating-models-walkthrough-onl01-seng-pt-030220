require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    # text_from_user = params[:user_text]
    # @analyzed_text = TextAnalyzer.new(text_from_user)
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    @words = @analyzed_text.count_of_words
    @vowels = @analyzed_text.count_of_vowels
    @const = @analyzed_text.count_of_consonants
    
    @letter = @analyzed_text.most_used_letter.keys.join("")
    @letter_count = @analyzed_text.most_used_letter.values.join("")

    erb :results
  end
end
