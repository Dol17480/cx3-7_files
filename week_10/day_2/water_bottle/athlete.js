var athlete = {
  hydration: 100,
  distance: 0,
  belly: [],
  run: function(distance){
    if (this.hydration >= (distance * 5)) {
    this.distance += distance
    this.hydration -= (distance *5);
  }
  else return("You can't run that far. You can run another " + (this.hydration / 5) + " km")
  },
  hydrate: function(bottle, sip){
  this.hydration += sip;
  bottle.volume -= sip;
}
};

module.exports = athlete;
