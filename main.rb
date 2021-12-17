require_relative 'bcrypt'

users = [
  {username: "gautier", password: "gautier"},
  {username: "aubin", password: "aubin"},
  {username: "tiehoule", password: "tiehoule"},
]


  hashed = Bcrypt.hash_user_password(users)

puts hashed

