
puts "Entrez le nom du dossier"
input = gets.chomp
abort("mkdir: missing input") if input.empty?
Dir.mkdir("/Users/andranikhakobyan/Desktop/THP/#{input}")
#creation dossier lib 

Dir.mkdir("/Users/andranikhakobyan/Desktop/THP/#{input}/lib")

file = File.open("/Users/andranikhakobyan/Desktop/THP/#{input}/Gemfile", "a+")
file.puts("gem 'pry'")
file.puts("gem 'rspec'")
file.puts("gem 'nokogiri'")
file.puts("gem 'open-uri'")
file.puts("gem 'dotenv'")
file.close
#creation fichier .env
file = File.open(".env", "a+")
file.close



system("cd /Users/andranikhakobyan/Desktop/THP/#{input} && git init")


#change directory also with Dir.chdir()

Dir.chdir("/Users/andranikhakobyan/Desktop/THP/#{input}") do
system("open /Users/andranikhakobyan/Desktop/THP/#{input}")
system("rspec --init")
system("touch Readme.md")
#ajout de .env dans gitignore
file = File.open(".gitignore", "a+")
file.puts(".env")
file.close
system("pwd")

end 

#https://ruby-doc.org/core-2.5.1/Dir.html
