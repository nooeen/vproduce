const mongoose = require("mongoose");

const bidSchema = new mongoose.Schema({
    auctionID: {
        type: String,
    },
    volume: {
        type: Number,
    },
    unit: {
        type: String,
    },
    price: {
        type: String,
    },
}, {timestamps: true} );

module.exports = mongoose.model("bid", bidSchema);