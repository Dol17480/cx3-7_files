var bottle = require('../water_bottle');
var assert = require("assert");

describe('Water bottle', function(){
  it('should be empty at start', function(){
    assert.equal(0, bottle.volume)
  });
});

describe('Water bottle', function(){
  it('should go to 100 when filled', function(){
     bottle.fill();
    assert.equal(100, bottle.volume);
  })
  });


describe('Water bottle', function(){
  it('should decrease by 10 when drank', function(){
    bottle.fill();
    bottle.drink();
    assert.equal(90, bottle.volume);
  })
});

describe('Water bottle', function(){
  it('should reach 0 when emptied', function(){
    bottle.fill();
    bottle.empty();
    assert.equal(0, bottle.volume);
  })
});


describe('Water bottle', function(){
  it('should not go below 0', function(){
    bottle.drink();
    assert.equal(0, bottle.volume);
  })
});















