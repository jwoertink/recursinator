class Recursinator

  def self.parse(path, &block)
    self.new.parse(path, &block)
  end

  def parse(path, &block)
    Dir.foreach(path) do |item|
      next if item == "." || item == ".."
      item_path = File.join(path, item)
      if File.directory?(item_path)
        parse(item_path, &block)
      else
        yield(item_path)
      end
    end
  end

end
