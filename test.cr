require "./recursinator"
i = 0
Recursinator.parse("/Users/jeremywoertink/Sites/stan") do |file|
  if file.includes?(".jpg") || file.includes?(".png")
    i += 1
  end
end

puts "Found #{i} images"
