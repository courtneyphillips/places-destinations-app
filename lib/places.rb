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



end
