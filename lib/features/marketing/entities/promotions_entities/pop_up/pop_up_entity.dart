class PopUpEntity {
  final String image;
  final String? link;

  const PopUpEntity({
    required this.image,
    required this.link,
  });

  factory PopUpEntity.fromJson(Map<String, dynamic> json) {
    return PopUpEntity(
      image: json['image'] as String,
      link: json['link'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'link': link,
    };
  }
}
