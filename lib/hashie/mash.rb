module Hashie

	class Mash < Hash

		def method_missing(meth, *args, &block)
			puts "method_name #{meth.to_s}"
			puts "args #{args[0]}"
			puts "block #{block}"
			if meth.to_s =~ /.+\?$/
				false
			elsif meth.to_s =~ /.+=$/
				self[meth.to_s] = args[0]
			else
				self[meth.to_s << "="]
			end
		end

	end

end

