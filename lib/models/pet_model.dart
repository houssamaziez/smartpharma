import 'owner_model.dart';

class Pet {
  final Owner owner;
  final String name;
  final String imageUrl;
  final String description;
  final int age;
  final String sex;
  final String color;
  final int id;
  final img;

  Pet(
      {this.owner,
      this.name,
      this.imageUrl,
      this.description,
      this.age,
      this.sex,
      this.color,
      this.id,
      this.img});
}

var owner = Owner(
    name: 'Roselia Drew',
    imageUrl: 'images/pug.jpg',
    bio:
        'I recently lost my job and don\'t have enough time or money to tend to Darlene anymore. I have a lot of health issues that need attention and want to give Darlene the best life possible.');
var pets = [
  Pet(
    owner: owner,
    name: 'pharmaci',
    imageUrl: 'images/img6.jpg',
    description: 'medication',
    age: 2,
    sex: 'Female',
    color: 'Black',
    id: 12345,
    img: 'images/img6.jpg',
  ),
  Pet(
    owner: owner,
    name: 'Delivery services closest to you‏ ',
    imageUrl: 'images/img5.jpg',
    description: 'prix',
    age: 2,
    sex: 'Female',
    color: 'Black',
    id: 12345,
    img: 'images/img5.jpg',
  ),
  Pet(
    owner: owner,
    name: ' MANAR MA3za',
    imageUrl: 'images/img6.png',
    description: 'Frenchy',
    age: 2,
    sex: 'Female',
    color: 'Black',
    id: 12345,
    img: 'images/img5.jpg',
  ),
  Pet(
    owner: owner,
    name: 'مكان شراء ',
    imageUrl: 'images/img3.jpg',
    description: 'Labrador',
    age: 1,
    sex: 'Female',
    color: 'White',
    id: 98765,
    img: 'images/img6.jpg',
  ),
];
