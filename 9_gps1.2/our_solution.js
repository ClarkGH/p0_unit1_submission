// GPS 1.2 - JavaScript
 
// YOUR FULL NAMES:
//  1. Adam Dziuk
//  2. Clark Hinchcliff
 
 
//  1. "YOU SIGNED... WHO?!"
 
/*
  Create an object for client class that contains the name age and quote
  Initialize a new object for each actor in this class
*/
 
function Client (name,age,quote){
  this.name = name;
  this.age = age;
  this.quote = quote;
}
 
// 2. "Here they Come!"
 
var adamSandler = new Client ("Adam Sandler", 47, "That's your home! Are you too good for your home?!")
var kristenBell = new Client ("Kristen Bell", 33, "Do you wanna build a snowman?")
var jimCarrey = new Client ("Jim Carrey", 52, "...So you're telling me there's a chance? YEAH!")
 
//    3. "TIME IS MONEY!"
 
// YOUR CODE HERE!
 
var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";
 
//     4. "SHOW 'EM OFF!"
 
var list = [adamSandler, kristenBell, jimCarrey, shooterMcGavin]
 
Client.prototype.display = function() {
  console.log("Client: " + this.name)
  console.log("Age: " + this.age)
  console.log("Quote: " + this.quote)
}
 
Client.prototype.favFood = function(food) {
  this.food = food
}
 
for (var i = 0; i < list.length; i++) {
  list[i].display()
}
 
adamSandler.favFood("Ham")
 
//       ** BONUS **