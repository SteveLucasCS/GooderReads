var express = require("express");
var app = express();
app.use(express.static("public"));
var PORT = process.env.PORT || 8080;

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

var apiRoutes = require("./routes/api-routes");
app.use(apiRoutes);

// Set Handlebars.
var exphbs = require("express-handlebars");

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");


var htmlRoutes = require("./routes/html-routes");
app.use(htmlRoutes);

app.listen(PORT, function () {
    console.log("Server listening on: http://localhost:" + PORT);
});

var orm = require("./config/orm");

orm.selectWhere("ratings", "User-ID", 1, function (res) {
    console.log(res);
})
