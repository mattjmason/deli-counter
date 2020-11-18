# Write your code here.

katz_deli = []

def line(katz_deli)
    spot_in_line = []
    if katz_deli.size == 0
        puts "The line is currently empty."
    else 
        number = 1 

        katz_deli.each do |person|
            spot_in_line << "#{number}. #{person}"
            number += 1 
        end 
        puts "The line is currently: #{spot_in_line.join(" ")}"
	end
end 

def take_a_number(katz_deli, new_person)
    katz_deli << new_person
    puts "Welcome, #{new_person}. You are number #{katz_deli.size} in line."
end


def now_serving(katz_deli)
    if katz_deli.empty?
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{katz_deli.first}."
        katz_deli.shift
    end 
end 
