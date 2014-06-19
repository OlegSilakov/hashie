module Hashie

	class Mash < Hash

		def method_missing(meth, *args, &block)
			if meth.to_s =~ /.+\?$/
				false
			else
				nil
			end
		end

	end
	
end