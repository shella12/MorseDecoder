module MyEnumerable
 
	def all? (&block)

		if block_given?
			
			each {|a| 
				if block.call(a) == false
				return false
				end
				

			} 

			true

	else
		each { |obj| 
			
			if !obj
				return false
			end
			}
			return true

	end

	end

	def any?(&block)

		if block_given?
			
			each {|a| 
				if block.call(a) == true
					return true
				else
					next
				end


			} 

			false

	else
		each { |obj| 
			
			if obj
				return true
			else
				next
			end
			}
			return false

	end
		
	end

	def filter(&block)

		if block_given?
			ans = []

			each {|obj|
				if block.call(obj)
					ans.append(obj)
				else
					next
				end
			}

			ans

		else
			each 
		end
	end




end
