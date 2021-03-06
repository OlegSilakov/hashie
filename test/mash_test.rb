require 'test_helper'

class HashieTest < MiniTest::Unit::TestCase

	def setup 
		@mash = Hashie::Mash.new
	end

	def test_mash_1
		assert_equal false, @mash.name?
	end

	def test_mash_2
		assert_equal nil, @mash.name
	end

	def test_mash_3
		@mash.name = "Michael Bleigh"
		assert_equal "Michael Bleigh", @mash.name
	end

	def test_mash_4
		@mash.name = "My Mash"
		assert_equal "<Hashie::Mash name=\"My Mash\">", @mash.inspect 
	end

	def test_mash_5
		@mash.author!.name = "Michael Bleigh"
		assert_equal "<Hashie::Mash name=\"Michael Bleigh\">", @mash.author.inspect
	end

end