require "./recursinator"
i = 0
Recursinator.parse("/Users/jeremywoertink/Sites/stan") do |file|
  if file.include?(".jpg") || file.include?(".png")
    i += 1
  end
end

puts "Found #{i} images"
