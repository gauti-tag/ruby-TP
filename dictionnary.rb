
dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}
0
# Get city names from the hash
def get_city_names(somehash)
# Write code here
 somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
# Write code here
 somehash[key]

end

# Execution flow
loop do

# Write your program execution code here
 puts "Do you want to lookup an area based on city names (Y/N)"
 answer = gets.chomp.downcase
 break if answer != "y"
 #display the city name
 puts get_city_names(dial_book)
 puts "Enter the city name to see the code"
 code = gets.chomp 
 if dial_book.include?(code)
    puts "the #{code}'s code is #{get_area_code(dial_book,code)}"
 else
    puts "the #{code} is not in the list"
 end
end

     
