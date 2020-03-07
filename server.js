var express = require("express")
var mysql = require("mysql");
var inquirer = require("inquirer");
var app = express();

// Set the port of our application

var PORT = process.env.PORT || 8080;

var connection = mysql.createConnection({
  host: "localhost",
  var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "task_saver_db"
  });