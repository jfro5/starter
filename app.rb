sites = {
    amazon: "monkey1",
    facebook: "giraffe2"
}

puts "Choose an action"
choice = gets.chomp.downcase

case choice
  when "add"
    puts "What's the name of the site?"
    title = gets.chomp.downcase
    if sites[title.to_sym].nil?
      puts "What's the password?"
      rating = gets.chomp.downcase
      sites[title.to_sym] = password
      puts "Thanks, you're password has been stored."
    else
      puts "That site already has a password stored."
    end
  when "update"
    puts "What's the name of the site you want to update?"
    title = gets.chomp.downcase
    if sites[title.to_sym].nil?
      puts "That site doesn't have a password stored."
    else
      puts "What's the new password?"
      password = gets.chomp.downcase
      sites[title.to_sym] = password
    end
  when "display"
    sites.each { |title,password| puts "#{title}: #{password}"}
  when "delete"
    puts "What's the name of the site you want to delete?"
    title = gets.chomp.downcase
    if sites[title.to_sym].nil?
      puts "That site doesn't have a password stored."
    else
      sites.delete(title)
      puts "Password deleted"
    end
  else
    puts "Error!"
end

