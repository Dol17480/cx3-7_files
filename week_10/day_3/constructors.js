var House = function(sqFeet, bathrooms, bedrooms) {
 this.sqFeet = sqFeet;
 this.bathrooms = bathrooms;
 this.bedrooms = bedrooms;
};

var house1 = new House(2000, 2, 3);
var house2 = new House(8000, 4, 6);
var house3 = new House(1000, 1, 1);

console.log( "house1", house1 );

var Office = function(desks, meetingRooms) {
  this.desks = desks;
  this.meetingRooms = meetingRooms;
  this.averageDesksPerMeetingRoom = function (){
    return (this.desks / this.meetingRooms).toFixed(2);
  }
};

var office1 = new Office(6,4);
var office2 = new Office(10,6);
console.log( "average desks", office2.averageDesksPerMeetingRoom() );

// var house1 = {
//   sqFeet: 2000,
//   bathrooms: 2,
//   bedrooms: 3
// };

// var house2 = {
//   sqFeet: 8000,
//   bathrooms: 4,
//   bedrooms: 6
// };

// var house3 = {
//   sqFeet: 1000,
//   bathrooms: 1,
//   bedrooms: 1
// };