
require_relative 'bcrypt'

class Student

    include Bcrypt

    attr_accessor :first_name, :last_name, :email, :username, :password

    def initialize(first_name, last_name, email, username, password)
      @first_name = first_name
      @last_name = last_name
      @email = email
      @username = username
      @password = password
    end

  def to_s
    puts "First name: #{@first_name}, the last name is: #{last_name}, the email : #{email}, the username is #{username} and the password is #{password}"
  end

end 


gautier = Student.new("gautier", "tiehoule", "gautier.tiehoule@gmail.com", "Gauti20", "Gauti2021")
jean = Student.new("Jean", "Toure", "jean.toure@gmail.com", "Jean21", "Jeannio2021")

#puts gautier
#puts jean

#gautier.last_name = jean.last_name
#puts "Gautier altered"
#puts gautier

hash_pass = gautier.secure_hash_password(gautier.username)
puts hash_pass
