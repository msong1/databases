var models = require('../models');

module.exports = {
  get: function (req, res) {
    if (req.url === '/classes/messages') { // LATER, NEED TO CHECK
      console.log('HERE???????');
      utils.sendResponse(res, 'FETCHED RESULT');
    } else {
      console.log('HERE???????');
      utils.sendResponse(res, null, 404);
    }
  }, // a function which handles a get request for all messages
  post: function (req, res) {} // a function which handles posting a message to the database
};
