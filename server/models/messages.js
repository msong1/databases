var db = require('../db');

module.exports = {
  getAll: function (request, response) {
    const queryString = `SELECT m.id m.text r.roomname u.username FROM messages m
                              INNER JOIN users u ON m.userId = u.id
                              INNER JOIN rooms r ON m.roomID = r.id`;
    const queryArgs = [];
    db.query(queryString, queryArgs, (err, results) => {
      if (err) {
        throw err;
      } else {

      }
    }
    );
  }, // a function which produces all the messages
  create: function () {} // a function which can be used to insert a message into the database
};
