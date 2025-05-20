USERNAME = "tacoda"
PASSWORD = "secret"
PASSWORD_VAULT = {aws: {username: "ian", password: "supersecret"}}

puts "Welcome to None Shall Pass - A Password Manager"
puts "Please sign in to continue"
print "Enter username: "
username = gets.chomp
# p username

if username == USERNAME
  print "Enter password: "
  password = gets.chomp
else
  puts "Invalid username"
  exit
end

unless password != PASSWORD
  puts "Hello, #{username}"
  puts "What would you like to do?"
  puts "1. Add new service credentials"
  puts "2. Retrieve an existing service's credentials"
  puts "3. Exit"
  selection = gets.chomp
else
  puts "Invalid password"
  exit
end

case selection
when '1'
  print "Enter the name of the service: "
  new_service = gets.chomp
  PASSWORD_VAULT[new_service] = {}
  # p PASSWORD_VAULT

  print "Please enter the username for this new service: "
  new_service_username = gets.chomp
  PASSWORD_VAULT[new_service]["username"] = new_service_username
  # p PASSWORD_VAULT

  print "Please enter the password for this new service: "
  new_service_password = gets.chomp
  PASSWORD_VAULT[new_service]["password"] = new_service_password
  # p PASSWORD_VAULT
when '2'
  print "Please enter the name of the service to access: "
  service = gets.chomp
  credentials = PASSWORD_VAULT[service.to_sym]

  puts "Here are the credentials for #{service}:"
  credentials.each do |key, val|
    puts "#{key}: #{val}"
  end
else
  puts "Exiting the program. Goodbye."
  exit
end
