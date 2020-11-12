def line(katz_deli)
    
    if katz_deli == []
        #or katz_deli.empty?
        puts "The line is currently empty."
    else
        list_of_names = katz_deli.collect.with_index(1) do |element, index|
        "#{index}. #{element}"
    end.join(" ")
        puts "The line is currently: #{list_of_names}"
end
    
end 


def take_a_number(katz_deli, new_person)
    katz_deli.push(new_person)
    #method 1:
    # linePosition = katz_deli.index(new_person) + 1
    # puts "Welcome, #{new_person}. You are number #{linePosition} in line."

    #method 2:
    puts "Welcome, #{new_person}. You are number #{katz_deli.length} in line." 

    #method 3:
    # katz_deli.each_with_index do |person, index|
    #     puts "this is the #{person}, and they are at #{index}."
    #     if person == new_person
    #         puts "Welcome, #{new_person}. You are number #{index + 1} in line."
    #     end
    # end
end


def now_serving(katz_deli)
    if katz_deli.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli.shift}."
    end
end
