var exec = require('child_process').exec;

exec("gnome-terminal --working-directory=/home/ncs", function(err, stdout){

	if (err){
		throw err;
	}

	console.log("I sure hope this works");
});
