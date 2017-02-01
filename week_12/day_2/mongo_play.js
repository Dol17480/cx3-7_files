use farm;

db.animals.insert({
  name: "Eric",
  type: "Polar Bear"
});

db.animals.insert({
  name: "Fred",
  type: "Lion"
});

db.animals.find({name: "Fred"});

db.animals.update({name: "Fred" },{
  $set: {type: "Goose"}
})

db.animals.remove( {name: "Fred"} );

db.animals.find();


db.dropDatabase();