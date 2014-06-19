module Hashie

	class Mash < Hash

		def method_missing(meth, *args, &block)
			false
		end

	end
	
end