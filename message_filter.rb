class MessageFilter
  def initialize(word)
    @word = word
  end
  def detect?(text)
    # true
    text.include?(@word)
  end
end
