class Post{
  final String umumiy_maydon;

Post({
  required this.umumiy_maydon
  });

  factory Post.fromJson(Map<String, dynamic>json) => Post(
    umumiy_maydon: json['umumiy_maydon']
  );
}
  
  