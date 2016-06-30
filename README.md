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

## Benchmarking
ok, so this isn't a great benchmark, but here's some numbers anyway

```
Ruby
$ time ruby test.rb
real  0m0.227s
user  0m0.112s
sys 0m0.108s
```

```
Crystal (dynamic)
$ time crystal test.cr
real  0m0.687s
user  0m0.534s
sys 0m0.333s
```

```
Crystal (compiled)
$ crystal build test.cr && time ./test
real  0m0.190s
user  0m0.084s
sys 0m0.110s
```
