var List = require('./list.js');

var TestLib = {

	list: null,
	init: function() {
		console.log("Initializing TestLIb");
		list = new List();
	},

	onClientConnects: function(){
		console.log("Client Connected");

	}


}

module.exports = TestLib;
