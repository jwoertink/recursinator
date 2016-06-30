# Recursinator
a mini snippet of code written in Ruby and Crystal to traverse a directory for whatever you want.

In the `test.code` file, I am just looking for any file ending in .jpg, and counting them. This will allow me to benchmark doing massive recurrsion between ruby and crystal.

## Running the test

Ruby `ruby test.rb`

Crystal `crystal test.cr`

## Usage

Ruby
```ruby
require "./recursinator"

Recursinator.parse("/path/to/folder") do |file|
  # do stuff with file
end
```

Crystal
```crystal
require "./recursiantor"

Recursinator.parse("/path/to/folder") do |file|
  # do stuff with file
end
```
