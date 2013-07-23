class Series
  def initialize(num) 
    @number = num
  end

  def digits
    @list = @number.to_s.split('').collect{|i| i.to_i}
  end

  def slices(num_slices)
    raise ArgumentError.new("Your slice size is greater than number") if @number.size < num_slices
    digits
    @lists=[]
    @list.each_cons(num_slices) { |a| @lists << a }
    @lists
  end

  def largest_product(num_slices)
    slices(num_slices)
    product_array=[]
    @lists.each { |x| product_array << x.inject(:*)}
    product_array.max
  end

end
