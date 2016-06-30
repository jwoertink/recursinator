require "./recursinator"
i = 0
Recursinator.parse("/Users/jeremywoertink/Sites/stan") do |file|
  if file.includes?(".jpg")
    i += 1
    puts "do you even jpeg, bruh? #{file}"
  end
end

puts "Found #{i} jpg"
