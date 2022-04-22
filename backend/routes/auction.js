var express = require('express');
const auctionModel = require("../server/models/Auction");
const bidModel = require("../server/models/bid");
var router = express.Router();

function getRandomInt(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min) + min); //The maximum is exclusive and the minimum is inclusive
  }

/* GET auction test. */
router.get('/', function(req, res, next) {
  res.send('test');
});

/* GET users listing. */
router.get('/list', function(req, res, next) {
    auctionModel.find({})
        .then((auction, err) => {
            res.status(200).json(auction)
            console.log(auction)
            console.log(err)
        })
        .catch((err) => {
            res.status(500).json(err);
        })
});

router.get('/listBid', function(req, res, next) {
    var mysort = {price: -1}
    bidModel.find({}).sort(mysort)
        .then((auction, err) => {
            res.status(200).json(auction)
            console.log(auction)
            console.log(err)
        })
        .catch((err) => {
            res.status(500).json(err);
        })
});



router.post('/createBid', function(req, res, next) {
    req.body.auctionID = "62632301e320a87ad6e10290";
    req.body.volume = getRandomInt(1,10);
    req.body.unit = "kg";
    req.body.price = getRandomInt(12,25);
    const newBid = new bidModel(req.body);
    newBid.save()
    .then((messages, err) => {
        res.status(200).json(messages);
    })
    .catch((err) => {
        res.status(500).json(err);
    })
});

router.get('/deleteBid', function(req, res, next) {
    bidModel.deleteMany()
        .then((auction, err) => {
            res.status(200).send(auction.Volume)
            
        })
        .catch((err) => {
            res.status(500).json(err);
        })
});

 

//api/chat/saveMessage
// saveMessage(req, res, next) {
//     const newMessage = new Message(req.body);
//     newMessage.save()
//     .then((messages, err) => {
//         res.status(200).json(messages);
//     })
//     .catch((err) => {
//         res.status(500).json(err);
//     })
// }


module.exports = router;
