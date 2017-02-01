var athlete = require('../athlete');
var bottle = require('../water_bottle');
var assert = require('assert');

describe('Athlete', function(){
  it('should be fully hydrated at start', function(){
    assert.equal(100, athlete.hydration);
  })
});

describe('Athlete', function(){
  it('should start at 0 distance covered', function(){
    assert.equal(0, athlete.distance);
  })
});

describe('Athlete', function(){
  it('should be able to run', function(){
    athlete.run(5);
    assert.equal(5, athlete.distance);
    assert.equal(75, athlete.hydration);
  })
});

describe('Athlete', function(){
  it('should not be able to run', function(){
    athlete.run(15);
    assert.equal(20, athlete.distance);
    assert.equal(0, athlete.hydration);
    athlete.run(1);
    assert.equal(0, athlete.hydration);
  })
});

describe('Athlete', function(){
  it('should be able to hydrate with bottle', function(){
    bottle.fill();
    athlete.hydrate(bottle, 100);
    assert.equal(100, athlete.hydration);
  })
});









