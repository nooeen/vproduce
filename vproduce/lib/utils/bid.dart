class Bid {
  final int volume;
  final String price;

  const Bid({
    required this.volume,
    required this.price,
  });

  factory Bid.fromJson(Map<String, dynamic> json) {
    return Bid(volume: json['volume'], price: json['price']);
  }

  Map<String, dynamic> toJson() => {
        "volume": volume,
        "price": price,
      };
}
