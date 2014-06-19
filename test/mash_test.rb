require 'minitest/autorun'

class HashieTest < MiniTest::Unit::TestCase

	def test_mash_1
		puts (require 'hashie')
		mash = Hashie::Mash.new
		assert_equal false, mash.name?
	end

end