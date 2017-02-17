class WordList
attr_reader :count, :total_score

def initialize
  @count = 0
  @total_score = 0
end

  def add(word)
    @count += 1
  end

end
