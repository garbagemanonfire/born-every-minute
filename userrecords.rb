
class User

  def initialize
    @storage = []
  end

  def append_to_hash (username, email, twitter)
   userrecord = {:username => username, :email => email, :twitter => twitter}
   append_to_array(userrecord)
  end

  def append_to_array(userrecord)
    @storage << userrecord
  end

  def get_users
    puts @storage
  end

end

# @@user = User.new

# @@user.append_to_hash("niles", "niles@gmail.com", "@niles")
# @@user.append_to_hash("paul", "paul@gmail.com", "@paul")
# @@user.append_to_hash("stan", "stan@gmail.com", "@stanely")

# @@user.get_users


