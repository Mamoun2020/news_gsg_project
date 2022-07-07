class Source{
  String? id;
  String? name;
  Source.fromJson(Map<String,dynamic> map){
    id = map['id'];
    name = map['name'];
  }
}