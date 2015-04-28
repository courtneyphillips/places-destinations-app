class Place
  @@list = []

  define_method(:initialize) do |destination|
    @destination = destination
  end

  define_method(:destination) do
    @destination
  end

  define_singleton_method(:all_places) do
    @@list
  end

  define_method(:save) do
    @@list.push(self)
  end

  define_singleton_method(:clear) do
    @@list = []
  end

end
