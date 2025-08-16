const Razorpay = require("razorpay");

// Only create Razorpay instance if environment variables are available
let instance = null;

if (process.env.RAZORPAY_KEY && process.env.RAZORPAY_SECRET) {
	instance = new Razorpay({
		key_id: process.env.RAZORPAY_KEY,
		key_secret: process.env.RAZORPAY_SECRET,
	});
}

exports.instance = instance;
