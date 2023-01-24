class AppContact {
  int id;
  String name;
  String card;
  String image;

  AppContact(this.id, this.name, this.card, this.image);

  bool contains(String query){
    return name.contains(query) || card.contains(query);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'card': card,
    };
  }

  AppContact fromMap(Map<String, dynamic> map) {
    return AppContact(
          id=map['id'], name=map['name'], card=map['card'], image=map['image']
        );
  }
}