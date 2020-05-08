var mysql = require("mysql");
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "employee_db"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
  if (err) throw err;
  // run the start function after the connection is made to prompt the user
  start();
});

// function which prompts the user for what action they should take
function start() {
  inquirer
    .prompt({
      name: "Choices",
      type: "list",
      message: "What would you like to search?",
      choices: ["View All Employees", "View All Departments", "Update Roles", "EXIT"]
    })
    .then(function(answer) {
      // based on their answer, either call the bid or the post functions
      if (answer.Choices === "View All Employees") {
        viewEmployees();
      }
      else if(answer.Choices === "View All Departments") {
        viewDepartments();
      } 
      else if (answer.Choices === "Update Roles") {
        updateRoles();
      }
      else{
        connection.end();
      }
    });
}
    function viewEmployees(){
      connection.query("SELECT * FROM employee_list", function(err,data){
        if (err) throw err;
        console.table(data)
        start()
      })
    }
    function viewDepartments(){
      connection.query("SELECT * FROM department", function(err,data){
        if (err) throw err;
        console.table(data)
        start()
      })
    }
    function updateRoles(){
      connection.query("SELECT * FROM employee_list", function(err,data){
        if (err) throw err;
        var employee_list = []
        data.forEach(function(employee){
          var employeeObjects = {
            value:employee.id,
            name:employee.first_name + " " + employee.last_name
          }
          employee_list.push(employeeObjects)
        })
        inquirer.prompt({
          name:"employee",
          type:"list",
          message:"Select an employee to update",
          choices:employee_list
        }).then(function(answer){
          connection.query("SELECT * FROM role", function(err,data){
            if (err) throw err;
        var role_list = []
        data.forEach(function(role){
          var roleObjects = {
            value:role.id,
            name:role.title
          }
          role_list.push(roleObjects)
        })
            inquirer.prompt({
            name:"role",
            type:"list",
            message:"What is the new role?",
            choices:role_list
        })
        .then(function(answer2){
          var roleID = answer2.role
          var employeeID = answer.employee
          connection.query("UPDATE employee_list SET role_id = " + roleID + " WHERE id = " + employeeID, function(err,data){
            if (err) throw err;
            console.log("updated role")
            start()
          })
        })
      })
        })
      })
    }
// function to handle adding new employee
function addEmployee() {
  // prompt for info about the new employee
  inquirer
    .prompt([
      {
        name: "new_employee",
        type: "input",
        message: "What is the new employee name?"
      },
      {
        name: "role",
        type: "input",
        message: "What is their role?"
      },
    ])
    .then(function(answer) {
      // when finished prompting, insert a new employee into the db with that info
      connection.query(
        "INSERT INTO employee_list SET ?",
        {
          item_name: answer.new_employee,
          category: answer.role,
        },
        function(err) {
          if (err) throw err;
          console.log("Successful addition");
          start();
        }
      );
    });
}