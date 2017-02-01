use codeclan;

db.students.insert(
   [
    {
      name: "John",
      favouriteFood: "pizza"
    },
    {
      name: "Ross",
      favouriteFood: "apples"
    }
   ]
  );

db.instructors.insert(
   [
    {
      name: "Sian",
      favouriteFood: "soup"
    },
    {
      name: "Alan",
      favouriteFood: "beer"
    },
    {
      name: "Darren",
      favouriteFood: "potatoes"
    }
   ]
  );





show collections;

db.students.find();
db.instructors.find();

db.instructors.findAndModify({
    query: { name: "Alan", favouriteFood: "beer" },,
    update: { $inc: { favouriteFood: "Lettuce" } }
});




db.dropDatabase();