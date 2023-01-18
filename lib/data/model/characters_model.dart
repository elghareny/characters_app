class CharactersModel{
  int? id;
  String? name;
  String? statusIfDeadOrAlive;
  String? gender;
  String? image;
  String? episode;

  CharactersModel.fromJson(Map<String , dynamic> json)
  {
    id = json['id'];
    name = json['name'];
    statusIfDeadOrAlive = json['status'];
    gender = json['gender'];
    image = json['image'];
    episode = json['episode'];
  }
}