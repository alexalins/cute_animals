class Fox {
  String image;
  String link;

  Fox({this.image, this.link});

  factory Fox.fromJson(Map<String, dynamic> json) {
    return Fox(
      image: json['image'],
      link: json['link'],
    );
  }
}