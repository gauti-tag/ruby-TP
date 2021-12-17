
module Bcrypt
    

require 'bcrypt'


puts "welcome to the Encrypt module"
 
#my_password = BCrypt::Password.create("my password")
#my_password_1 = BCrypt::Password.create("my password")
#my_password_2 = BCrypt::Password.create("my password")

  #=> "$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa"

#puts my_password
#puts my_password_1
#puts my_password_2

#puts my_password.version              #=> "2a"
#puts my_password.cost                 #=> 10
#puts my_password == "my password"     #=> true
#puts my_password == "not my password" #=> false
 
# my_password = BCrypt::Password.new("$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa")
# my_password == "my password"     #=> true
# my_password == "not my password" #=> false

users = [
  {username: "gautier", password: "gautier"},
  {username: "aubin", password: "aubin"},
  {username: "tiehoule", password: "tiehoule"}
]


def secure_hash_password(password)
    BCrypt::Password.create(password)
end

def verify_hash_digest(password)
    BCrypt::Password.new(password)
end

def hash_user_password(users)
    users.each do |user_record|
        user_record[:password] = secure_hash_password(user_record[:password])
    end
    users
end


def authenticate_user(username, password, array_list)
   array_list.each do |record|
    if record[:username] == username && verify_hash_digest(record[:password]) == password
        return "this is the record ::::=> #{record}"  
    end
   end    
   "credentials are not corrects"
end

#puts hash_user_password(users)
#puts authenticate_user("gautier","gautier", users)
#puts authenticate_user("gautier","12", users)
end