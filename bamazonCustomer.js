var mysql = require("mysql");
var inquirer = require('inquirer');
// var tab = require('table-master'); attempt to add tables to products
var connection = mysql.createConnection({
  host: "localhost",

  // Your port
  port: 8889,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon_db"
});

//connect to bamazon database
connection.connect(function(err) {
    if (err) throw err;
    // console.log("connected as id " + connection.threadId);
  });


connection.query("SELECT * FROM products; ", function(err, res){
    console.log(err, res)
    askQuestions()
})


function askQuestions() {
    inquirer
    .prompt([{
        type:"input",
        message: "what would you like to purchase? (choose item id)",
        name: "Item"
  
    },{
        type:"input",
        message: "how many would you like to purchase?",
        name: "Qty" 
    }])
    
    .then(answers => {
      console.log("answers", answers)
      connection.query("SELECT * FROM products WHERE item_id="+ answers.Item, function(err, res){
      console.log("Stuff from DB", res)
      if (answers.Qty < res[0].stock_quantity) {
      console.log("Let's Buy It!")
      var newQty = res[0].stock_quantity - parseInt(answers.Qty)
      connection.query("UPDATE products SET stock_quantity = "+newQty+" WHERE item_id = "+answers.Item, function(err, res){
        console.log(res, err)
      })
      } 
      else {
      console.log("Insufficient Funds!")
      }
  
      })
    });   
}

//Incomplete portion pseudocode 
//Total price of purchase could not be complete
