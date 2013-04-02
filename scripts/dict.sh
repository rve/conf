#!/usr/bin/env ruby
word = gets.chomp
while word != "exit"
  cmd = "dict -d wn " + word
  puts  %x[ #{cmd} ]
  word = gets.chomp
end
