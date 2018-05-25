String.prototype.format = function() {
    a = this;
    for (k in arguments) {
        a = a.replace("{" + k + "}", arguments[k])
    }
    return a
}

const promise = function(id, seconds) {
	return new Promise((resolve, reject) => {
		var throwError = false;

		console.log("Promise #{0} is running ...".format(id));

		setTimeout(
			function() {
				if (throwError) {
					return reject("reject() when throwError = true");
				} else {
					return resolve("Promise #{0} resolve() after {1} seconds".format(id, seconds));
				}
			},
            seconds * 1000
		);
	});
};


promise(1, 1).then(function(message) {
	console.log(message);
}).catch(function(error) {
    console.error(error);
});

promise(2, 2).then(function(message) {
    console.log(message);
}).catch(function(error) {
    console.error(error);
});

Promise.all([promise(3, 3), promise(4,4)]).then(
	function(values) {
        console.log(values);
    }
);