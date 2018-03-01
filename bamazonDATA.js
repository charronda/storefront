var mysql = require("mysql");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3300,

  user: "root",

  password: "panda",
  database: "bamazonManager_db"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  afterConnection();
});

function afterConnection() {
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    console.log(res);
    connection.end();
  });
}
/* not working yet!
// prompts the user to enter an item
function order() {
  inquirer
    .prompt({
      product: "",
      quantity: "",
      message: "What would you like to purchase?",
    })
    .then(function(answer) {
      // recieve custom input
      if (answer.product.toLowerCase()) {
        placeOrder();
      }
      else {
        console.log("Thanks you for visting our site!")
      }
    });
}

.then(function(answer) {
  // when finished prompting, update quanity in the db
  connection.query(
    "INSERT INTO auctions SET ?",
    {
      product: answer.product,
      quantity: answer.quantity,
    // how to show price?
    },
    function(err) {
      if (err) throw err;
      console.log("Thank you for your order!");
    }
  );
});
} */
