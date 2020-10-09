def line(deli)
    if deli.empty?
        puts "The line is currently empty."
    else
        new_deli = []
        deli.each.with_index(1) do |person, i|
            new_deli << "#{i}. #{person}"
        end
        puts "The line is currently: #{new_deli.join(" ")}"
    end                 
end

def take_a_number(deli, name)
    deli << name
    puts "Welcome, #{name}. You are number #{(deli.index(name)+ 1)} in line."
end

def now_serving(deli)
    if deli.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli.first}."
        deli.shift
    end
end
