require 'launchy'

def recherche_google
puts "Entrez votre recherche google"
input = gets.chomp 
input.gsub!(/([" ","'"])/," "=> '+',"'"=>'%27')
Launchy.open("https://www.google.com/search?q=#{input}")

end

recherche_google
puts "vous voulez faire un autre recherche ? (y/n)"
input = gets.chomp 
while (input !="y" && input !="n") do 
puts "vous voulez faire un autre recherche ? choisissez entre y et n"
input = gets.chomp 
end 

if (input == "y")
recherche_google
puts "appuyer sur \"n\" pour arreter les recherches et sur \"y\" pour continuer"
input = gets.chomp
while (input !="y" && input !="n" ) do
puts "appuyer sur \"n\" pour arreter les recherches et sur \"y\" pour continuer"
input = gets.chomp 
end
while(input != "n" )
    recherche_google
    puts "appuyer sur \"n\" pour arreter les recherches"
    input = gets.chomp

end
end

#possible aussi avec system("open", "https://www.google.com/search?q=#{input}")
