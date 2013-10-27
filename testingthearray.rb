

class User

  def initialize
    # @username = ""
    # @email = ""
    # @twitter = ""
  
  end

  def append_to_hash (username, email, twitter)
   userrecord = {:username => username, :email => email, :twitter => twitter}
   append_to_array(userrecord)
  end

    # def userid 
    #   create 
    # end

  def append_to_array(userrecord)
    storage = []
    storage << userrecord
    puts storage
  end
end

user = User.new
user.append_to_hash("niles", "niles@gmail.com", "@niles")
user.append_to_hash("paul", "paul@gmail.com", "@paul")
user.append_to_hash("stan", "stanley@gmail.com", "@muffin")



