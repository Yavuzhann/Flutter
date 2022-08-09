class ModelViews {
  //data ui tarafından textfieldlardan değilde direk internetten gelecekse bu kullanım en uygubnu
  final int? userId;
  final int? id;
  final String? title;
  String? body;

  ModelViews({this.userId, this.id, this.title, this.body});

  ModelViews copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return ModelViews(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body);
  }

  void updateBody(String? data) {
    if (data != null && data.isEmpty) {
      body = data;
    }
  }
}

// class PostModel8 {
//   //data ui tarafından textfieldlardan değilde direk internetten gelecekse bu kullanım en uygubnu
//   final int? userId;
//   final int? id;
//   final String? title;
//   final String? body;

//   PostModel8(this.userId, this.id, this.title, this.body);

//   PostModel8 copyWith({
//     int? userId,
//     int? id,
//     String? title,
//     String? body,
//   }) {
//     return PostModel8(userId: userId ?? this.userId,);
//   }
// }
