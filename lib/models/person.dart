class Person {
  int id;
  String name;
  String email;
  String contact;
  String country;
  String createdAt;
  String updatedAt;

 Person(int id, String name, String contact, String email, String country, String createdAt, String updatedAt){
    this.id = id;
    this.name = name;
    this.contact = contact;
    this.email = email;
    this.country = country;
    this.createdAt = createdAt;
    this.updatedAt = updatedAt;
  }

  Person.fromJson(Map json) :
  id = json['id'],
  name = json['name'],
  email = json['email'],
  contact = json['contact'],
  country = json['country'],
  createdAt = json['created_at'],
  updatedAt = json['updated_at'];
}