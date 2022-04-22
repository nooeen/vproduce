const mongoose = require("mongoose");

const auctionSchema = new mongoose.auctionSchema({
    ID: {
        type: String,
    },
    Product: {
        type: String,
    },
    Volume: {
        type: double,
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