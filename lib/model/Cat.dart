class Cat {
  String id;
  String url;
  int width;
  int height;

  Cat({this.id, this.url, this.height, this.width});

  factory Cat.fromJson(Map<String, dynamic> json) {
    return Cat(
      id: json['id'],
      url: json['url'],
      height: json['height'],
      width: json['width'],
    );
  }
}