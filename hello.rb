#hello.rb
#description: says hello to user
#usage: ruby hello.rb

def say_hello
   puts "Hello! What is your name?"
   input = gets.strip
   puts "Hi #{input}!"
end

say_hello

