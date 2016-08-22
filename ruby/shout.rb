module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!" + " :)"
  end
end

class Mom
  include Shout
end

class Dad
  include Shout
end

p Mom.new.yell_angrily("I am mad")
p Dad.new.yell_happily("I am happy")