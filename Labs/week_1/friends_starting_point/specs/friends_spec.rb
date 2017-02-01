require( 'minitest/autorun' )
require('minitest/rg')
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Rick",
      age: 12,
      monies: 1,
      friends: ["Jay","Keith","Marc", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie"]
      } 
    }
    
    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["soup","bread"]
      } 
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      } 
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Marc"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti"]
      } 
    }

    @person5 = {
      name: "Marc",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      } 
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  def test_name
    assert_equal("Marc",@person5[:name])
  end
  def test_fave_tv_show
    assert_equal("Friends", find_fave_show(@person1))
  end

  def test_do_you_like
    assert_equal(true, do_you_like(@person2, 'soup'))
    assert_equal(false, do_you_like(@person2, 'pizza'))
  end

  def test_add_friend
    add_friend(@person2, 'David')
    assert_equal(["Keith", "David"], @person2[:friends])
    # assert_equal(true, @person2[:friends].include?("David"))
    # assert_equal("David", @person2[:friends].pop)
  end

  def test_remove_friend
    remove_friend(@person4, 'Jay')
    assert_equal(["Rick", "Marc"], @person4[:friends])
  end

  def test_monies
    assert_equal(143, monies(@people))

  end

  def test_loan
    loan(@person5, @person1, 50 )
    assert_equal(50, @person5[:monies])
  end

  def test_total_food
    return_food_array = everyones_food(@people)
    assert_equal(7, return_food_array.count)
  end

  def test_no_friends
    assert_equal(["Marc"], no_friends(@people))
  end

  def test_group_by_tv_show
    expected = {"Scrubs" => ["Jay", "Marc"], "Pokemon" => ["Val", "Keith"]}


end



























