require 'minitest/autorun'
require 'hashie'

class HashieTest < MiniTest::Unit::TestCase

	def mash_test_1
		mash = Hashie::Mash.new
		assert_equal false, mash.name?
	end

end