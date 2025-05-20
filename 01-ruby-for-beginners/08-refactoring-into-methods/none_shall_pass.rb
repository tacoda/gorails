USERNAME = "tacoda"
PASSWORD = "secret"
PASSWORD_VAULT = {aws: {username: "ian", password: "supersecret"}}

def welcome_message
  puts "Welcome to None Shall Pass - A Password Manager"
end

def prompt_user_for_username
  puts "Please sign in to continue"
  print "Enter username: "
  gets.chomp
end

def verify_username(username)
  if username != USERNAME
    puts "Invalid username"
    exit
  end
end

def prompt_user_for_password
  print "Enter password: "
  gets.chomp
end

def verify_password(password)
  if password != PASSWORD
    puts "Invalid password"
    exit
  end
end

def greet_user(username)
  puts "Hello, #{username}"
end

def menu_options
  puts "What would you like to do?"
  puts "1. Add new service credentials"
  puts "2. Retrieve an existing service's credentials"
  puts "3. Exit"
end

def menu_selection
  gets.chomp
end

def handle_selection(selection)
  case selection
  when '1'
    new_service = set_new_service_name
    set_username_for(new_service)
    set_password_for(new_service)
    credentials = retrieve_credentials_for(new_service)
    display_credentials(new_service, credentials)
  when '2'
    service = retrieve_service_name
    credentials = retrieve_credentials_for(service)
    display_credentials(service, credentials)
  else
    exit_program
  end
end

def set_new_service_name
  print "Enter the name of the service: "
  new_service = gets.chomp
  PASSWORD_VAULT[new_service.to_sym] = {}
  new_service
end

def set_username_for(service)
  print "Please enter the username for this new service: "
  new_service_username = gets.chomp
  PASSWORD_VAULT[service.to_sym][:username] = new_service_username
end

def set_password_for(service)
  print "Please enter the password for this new service: "
  new_service_password = gets.chomp
  PASSWORD_VAULT[service.to_sym][:password] = new_service_password
end

def retrieve_service_name
  print "Please enter the name of the service to access: "
  gets.chomp
end

def retrieve_credentials_for(service)
  PASSWORD_VAULT[service.to_sym]
end

def display_credentials(service, credentials)
  puts "Here are the credentials for #{service}:"
  credentials.each do |key, val|
    puts "#{key}: #{val}"
  end
end

def exit_program
  puts "Exiting the program. Goodbye."
  exit
end


welcome_message
username = prompt_user_for_username
verify_username(username)
password = prompt_user_for_password
verify_password(password)
greet_user(username)

loop do
  menu_options
  selection = menu_selection
  handle_selection(selection)
end
