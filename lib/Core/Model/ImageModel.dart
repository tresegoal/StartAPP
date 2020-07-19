class ImageModel {
  int id;
  String url;
  String title;

  ImageModel({this.id,this.url,this.title});

  ImageModel.fromjson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    title = json['title'];
  }

  Map<String, dynamic> tojson() => {
    "id" : id,
    "url" : url,
    "title" : title
  };

  @override
  String toString() {
    return 'ImageModel{id: $id, url: $url, title: $title}';
  }


}