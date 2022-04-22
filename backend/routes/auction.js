var express = require('express');
const auctionModel = require("../server/models/Auction");
var router = express.Router();

/* GET auction test. */
router.get('/', function(req, res, next) {
  res.send('test');
});

/* GET users listing. */
router.get('/mongodb', function(req, res, next) {
    auctionModel.find({ })
        .then((auction, err) => {
            res.status(200).send(auction.Volume)
            console.log(auction)
        })
        .catch((err) => {
            res.status(500).json(err);
        })
});

// getMessage(req, res) {
//     Message.find({$or: [{
//         sender: req.query.sender,
//         receiver: req.query.receiver,
//     }, {
//         receiver: req.query.sender,
//         sender: req.query.receiver,
//     }]})
//     .then((messages, err) => {
//         for(let i = 0; i < messages.length; i++){
//             if(req.query.sender == messages[i].sender) {
//                 messages[i] = {
//                     own: true,
//                     text: messages[i].text,
//                     createdAt: messages[i].createdAt,
//                 }
//             } else {
//                 messages[i] = {
//                     own: false,
//                     sender: messages[i].sender,
//                     text: messages[i].text,
//                     createdAt: messages[i].createdAt,
//                 }
//             }
//         }
//         //console.log(messages)
//         res.status(200).json(messages);
//     })
//     .catch((err) => {
//         res.status(500).json(err);
//     })
// }

module.exports = router;
