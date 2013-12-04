sites = {
    amazon: 'monkey1',
    facebook: 'giraffe2'
}

puts 'Choose an action'
choice = gets.chomp.downcase

case choice
  when 'add'
    puts 'Name of the site?'
    title = gets.chomp.downcase
    if sites[title.to_sym].nil?
      puts 'What is the password?'
      password = gets.chomp.downcase
      sites[title.to_sym] = password
      puts 'Thanks, your password has been stored.'
    else
      puts 'That site already has a password stored.'
    end
  when 'update'
    puts 'Name of the site you want to update the password for?'
    title = gets.chomp.downcase
    if sites[title.to_sym].nil?
      puts 'That site does not have a password stored.'
    else
      puts 'New password?'
      password = gets.chomp.downcase
      sites[title.to_sym] = password
    end
  when 'display'
    sites.each { |title,password| puts "#{title}: #{password}"}
  when 'delete'
    puts 'Name of the site you want to delete?'
    title = gets.chomp.downcase
    if sites[title.to_sym].nil?
      puts 'No password stored for that site.'
    else
      sites.delete(title)
      puts 'Password deleted'
    end
  else
    puts 'Error!'
end

