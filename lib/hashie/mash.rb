module Hashie

	class Mash < Hash

		def inspect 
			"<#{self.class.name} " << self.reduce([]) do |acc, (key, value)|
				acc << "#{key}=\"#{value}\""
			end.join(" ") << ">"
		end

		alias :to_s :inspect

		def parse_method_name(math)
			[math.slice(/.+[^=$|^!$|^\?$]/).to_sym, math.slice(/=$|!$|\?$/)]
		end

		def method_missing(meth, *args, &block)

			method_name, operand = parse_method_name(meth)
			
			case operand
			when "?"
				self.key?(method_name)
			when "!"
				if (!key?(method_name))
					self[method_name] = Mash.new
				else 
					self[method_name]
				end			when "="
				self[method_name] = args[0]
			else
				self[method_name]
			end
		end

		def respond_to_missing?(meth, include_private = false)
			method_name, operand = parse_method_name(meth)
			if key?(method_name)
				return true
			else 
				case operand
				when "?", "!" "="
					return true
				else
					super
				end	
			end		
		end

	end

end