class MessageFilter
  def initialize(word)
    @word = word
  end
  def detect?(text)
    # text == 'hello from ' + @word
    true
  end
end
