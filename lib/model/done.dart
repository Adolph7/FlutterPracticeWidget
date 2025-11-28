class Done {
  String title;
  String image;

  Done ({
    required this.title,
    required this.image
  });

  factory Done.fromJson(Map<String, dynamic> json) {
    return Done(
      title: json['title'], 
      image: json['image']
    );
  }
}