// convert get json to dart object
class post {
  int id;
  int uesrId;
  String title;
  String body;

  post({this.id, this.uesrId, this.title, this.body});

  factory post.fromjson(Map<String, dynamic> x) {
    return post(
        id: x['id'], uesrId: x['userId'], title: x['title'], body: x['body']);
  }
}

class Author {
  int id;
  String name;
  String bio;
  int age;

  Author({this.id, this.name, this.bio, this.age});

  // mean that we wouldn't create new instance
  // but use the same constructor above
  //= final , const
  factory Author.fromjson(Map<String, dynamic> author) => Author(
      id: author['id'],
      name: author['name'],
      age: author['age'],
      bio: author['bio']);
}
