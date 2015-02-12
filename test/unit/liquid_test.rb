require File.expand_path("../../test_helper.rb", __FILE__)

class LiquidTest < ActiveSupport::TestCase

  test "A liquid can be saved, if name, base and nicotine are given" do
    liquid = Liquid.new(name: "Strawberry Cheesecake", base:"PG/VG", nicotine:9, notes:'This is not bad at all')
    assert liquid.valid?
  end
  
  test "A liquid should always have a name " do
     liquid = Liquid.new(base: "PG", nicotine: 9)
     assert !liquid.valid?
  end

  test "A liquid should always have a defined base type " do
     liquid = Liquid.new(name: "Strawberry Cheescake", nicotine: 9)
     assert !liquid.valid?
  end

  test "A liquid should always have a nicotine amount " do
     liquid = Liquid.new(name: "Strawberry Cheescake", base: "PG")
     assert !liquid.valid?
  end

end

