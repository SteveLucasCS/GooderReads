var orm = require("../config/orm.js");

var user = {
  //   all: function(cb) {
  //     orm.all("users", function(res) {
  //       cb(res);
  //     });
  //   },

  // The variables cols and vals are arrays.
  create: function (cols, vals, cb) {
    orm.create("users", cols, vals, function (res) {
      cb(res);
    });
  },

  // The variable cols is an array
  select: function (cols, attr, val, cb) {
    orm.select("users", cols, attr, val, function (res) {
      cb(res);
    });
  },
  //   update: function(objColVals, condition, cb) {
  //     orm.update("users", objColVals, condition, function(res) {
  //       cb(res);
  //     });
  //   },
  //   delete: function(condition, cb) {
  //     orm.delete("users", condition, function(res) {
  //       cb(res);
  //     });
  //   }
};

// Export the database functions to route controllers.
module.exports = user;
