 
import 'package:flutter/material.dart';

class AdoptPetScreen extends StatefulWidget {
  final int id;
  final String img, description;
  final String title, urlimg;

  AdoptPetScreen(this.id, this.title, this.urlimg, this.img, this.description);

  @override
  _AdoptPetScreenState createState() =>
      _AdoptPetScreenState(id, title, urlimg, img, description);
}

class _AdoptPetScreenState extends State<AdoptPetScreen> {
  int _id;
  final String img, description;
  final String title, urlimg;
  _AdoptPetScreenState(
      this._id, this.title, this.urlimg, this.img, this.description);
  Widget _buildInfoCard(String label, String info) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 100.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            info,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget listtilte(var size, img, description) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amber[100].withOpacity(0.4),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            )),
        height: 140,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(img),
                  ),
                  height: 70,
                  width: 70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  "Name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 00),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.location_on),
                        ),
                        Text(
                          "location",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.monetization_on,
                            ),
                          ),
                          Text(
                            description,
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Icon(Icons.phone),
                        ),
                        Text(
                          "call me ",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: IconButton(
                  icon: Icon(Icons.favorite_border),
                  iconSize: 30.0,
                  color: Theme.of(context).primaryColor,
                  onPressed: () => print('Favorite $title'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: _id,
                  child: Container(
                    width: double.infinity,
                    height: 350.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                      image: DecorationImage(
                        image: AssetImage(urlimg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 0.0),
                  child: IconButton(
                      iconSize: 40,
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back_ios),
                      color: Color(0xFFFD0000)),
                )
              ],
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            listtilte(size, img, description),
            //hna thto
            listtilte(size, img, description),
            listtilte(size, img, description),
            listtilte(size, img, description),
            listtilte(size, img, description),
            listtilte(size, img, description),
            listtilte(size, img, description),
            listtilte(size, img, description),
            listtilte(size, img, description),
          ],
        ),
      ),
    );
  }
}
