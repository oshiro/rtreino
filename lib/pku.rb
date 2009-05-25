class PKU
  attr_reader :username, :password
  def initialize(username,password)
    @username = username
    @password = password
  end
  
  def submissions
    PKUParser.submissions
  end
  
end

class PKUParser
  def self.submissions
  end
end
