require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_fragments = self.split(/[.!?]/)
    sentence_fragments.reject! { |fragment| fragment.empty? }
    sentence_fragments.count
  end
end

binding.pry
0