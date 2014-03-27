// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1. Allison Wong
//  2. Parjam Davoody

////////////////////////////////
//  1. "YOU SIGNED... WHO?!"
////////////////////////////////
////////////////////////////////


var parjam = { 
  name: "Parjam Davoody",
  age: 28,
  quote: "Programming is cool!"
  };

var allison = {
    name: "Allison Wong",
    age: 23,
    quote: "I like bears!"
};

var userInput = 'age';
allison[userInput] // more commonly used with a variable


////////////////////////////////
//   2. "Here they Come!"
////////////////////////////////
////////////////////////////////

var adam = {
  name: "Adam Sandler",
  age: 47,
  quote: "That's your home! Are you too good for your home?!"
};

var kristen = {
  name: "Kristen Bell",
  age: 33,
  quote: "Do you wanna build a snowman?"
};

var jim = {
  name: "Jim Carrey",
  age: 52,
  quote: "...So you're telling me there's a chance? YEAH!"
};


var clientList = [adam, kristen, jim];
// clientList[0] = adam;
// clientList[1] = kristen;
// clientList[2] = jim;


////////////////////////////////
//    3. "TIME IS MONEY!"
////////////////////////////////
////////////////////////////////

// CONSTRUCTOR FUNCTION

function Client(name, age, quote){
  this.name = name;
  this.age = age;
  this.quote = quote;
}

var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";



////////////////////////////////
//   4. "SHOW 'EM OFF!"
////////////////////////////////
////////////////////////////////

clientList.push(shooterMcGavin);

for (var i = 0; i < clientList.length; i++) {
   console.log("Our client " + clientList[i].name + " is " + clientList[i].age + " years old, and is known for saying \"" + clientList[i].quote + "\"."); 
}

////////////////////////////////
//      ** BONUS **
////////////////////////////////
////////////////////////////////

var client = ""
for (var i = 0; i < clientList.length - 1; i++) {
   client += clientList[i].name + ", ";
};
console.log("Our clients include " + client + "and " + clientList[clientList.length - 1].name + ".");
