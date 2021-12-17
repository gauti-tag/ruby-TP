
users = [
  {username: "gautier", password: "gautier"},
  {username: "aubin", password: "aubin"},
  {username: "tiehoule", password: "tiehoule"}
]

puts "Welcome to the authenticate project"
20.times {print "-"}
puts


def authenticate(username, password, users_record)

    users_record.each do |user_record|

    if user_record[:username] == username && user_record[:password] == password
     return user_record
    end

    end

    "Credentials were not correct"


end


attempt = 1

while attempt < 4

print "username:"
username = gets.chomp
print "password:"
password = gets.chomp


 auth = authenticate(username, password, users)

 puts auth

puts "press n to quit the program or any letter to continue"
q = gets.chomp.downcase
break if q == "n"

attempt +=1
end

puts "you have exceeded the number of attempts" if attempt == 4