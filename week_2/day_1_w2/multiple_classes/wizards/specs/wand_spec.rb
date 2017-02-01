require('minitest/autorun')
require('minitest/rg')
require_relative('../wand')

class TestWand < Minitest::Test

def setup
  @broken_wand = Wand. new("oak", "unicorn hair")
  @elder_wand = Wand. new("holly", "phoenix feather")
    


end







  end