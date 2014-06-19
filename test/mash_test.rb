require 'test_helper'

class HashieTest < MiniTest::Unit::TestCase

	def test_mash_1
		mash = Hashie::Mash.new
		assert_equal false, mash.name?
	end

	def test_mash_2
		mash = Hashie::Mash.new
		assert_equal nil, mash.name
	end

	def test_mash_3
		mash = Hashie::Mash.new
		mash.name = "Michael Bleigh"
		puts mash.to_s
		assert_equal "Michael Bleigh", mash.name
	end

end