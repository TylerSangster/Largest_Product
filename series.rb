class Series
	
	def initialize(num)
	  @number = num
    end

	def digits
	  @list = @number.to_s.split('').collect{|i| i.to_i}
	  # print @list
	  # puts " "
	end

	def slices(num_slices)
      raise ArgumentError.new("Your slice size is greater than number") if @number.size < num_slices
      digits
      @lists=[]
      @list.each_cons(num_slices) { |a| @lists << a }
      @lists
      # print @lists
      # puts " "	
	end

    def largest_product(num_slices)
      slices(num_slices)
      product_array=[]
      @lists.each { |x| product_array << x.inject(:*)}
      product_array.max
      #####  Prints out to see how code works  #####
      # print "Largest Product = "
      # print @lists[product_array.index(product_array.max)]
      # print "  = "
      # print product_array.max
      # puts " "

      # print "Index @"
      # print product_array.index(product_array.max)
      # puts " "
    end
end

# tyler = Series.new(5768902143)
# tyler.largest_product(2)