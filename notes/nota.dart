class Nota {
  int id;
  String content;
  Nota({
    required this.id,
    required this.content,
  });

  //convert to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'content': content,
    };
  }


  //convert from Map
  factory Nota.fromMap(Map<String, dynamic> map) {
    return Nota(
      id: map['id'],
      content: map['content'],
    );
  }
}
