require 'minitest/autorun'
require 'hashie'

class HashieTest < MiniTest::Unit::TestCase

	def test_mash_1
		mash = Hashie::Mash.new
		assert_equal false, mash.name?
	end

	def test_mash_2
		mash = Hashie::Mash.new
		assert_equal nil, mash.name
	end

end