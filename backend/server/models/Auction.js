const mongoose = require("mongoose");

const auctionSchema = new mongoose.Schema({
    _id: {
        type: String,
    },
    Product: {
        type: String,
    },
    Volume: {
        type: Number,
    },
    Unit: {
        type: String,
    },
    timeStart: {
        type: String,
    },
    timeEnd: {
        type: String,
    },
});

module.exports = mongoose.model("auction", auctionSchema);