module ShuffleFilter
  def shuffle(array)
    array.shuffle
  end
end

Liquid::Template.register_filter(ShuffleFilter)
