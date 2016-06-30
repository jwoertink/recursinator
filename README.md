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
ok, so this isn't a great benchmark, but here's some numbers anyway. This run finds 999 images within my app called "stan". This looks through 3048 directories for jpg and png. Running on MBP 2.7ghz i7 with 16GB ram.
```
[10:57AM] stan (master)$ find . -maxdepth 100 -type d | wc -l
    3048
```

```
Ruby (v 2.3.0)
$ time ruby test.rb
real  0m0.241s
user  0m0.117s
sys   0m0.108s
```

```
Crystal (dynamic v 0.18.6)
$ time crystal test.cr
real  0m0.687s
user  0m0.534s
sys   0m0.333s
```

```
Crystal (compiled v 0.18.6)
$ crystal compile test.cr --release && time ./test
real  0m0.148s
user  0m0.038s
sys   0m0.105s
```
