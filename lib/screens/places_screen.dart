import 'package:dordam/screens/single_city.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  final List<Map<String, dynamic>> clityList = const [
    {
      "address": "Rajshahi University",
      "id": "ru_01",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/3/3e/Administration_Building_of_Rajshahi_University.jpg",
      "lat": 23.7099,  //https://www.distancesto.com/coordinates/bd/chattogram-latitude-longitude/history/1251752.html
      "lng": 90.4071,  //abobe links for lat and lng
      "name": "Rajshahi University Bangladesh",
      "phone": "7014333352",
      "region": "South Asia"
    },
    {
      "address": "Rajshahi City",
      "id": "raj_02",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/8/83/Mango_roundabout%2C_Rajshahi.jpg",
      "lat": 24.3635886,
      "lng": 88.6241351,
      "name": "Mango Round Rajshahi",
      "phone": "7014333352",
      "region": "South Asia"
    },
    {
      "address": "Chittagong City",
      "id": "chittagong_03",
      "image":
          //"https://upload.wikimedia.org/wikipedia/commons/1/14/The_National_Parliament_of_Bangladesh.jpg",
          "https://upload.wikimedia.org/wikipedia/commons/9/96/Jamburi_Park.jpg",
      "lat": 22.356851,
      "lng": 91.783182,
      "name": "Chittagong City",
      "phone": "7014333352",
      "region": "South Asia"
    },
    {
      "address": "Dhaka City",
      "id": "dhaka_04",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/9/9c/Shapla_Chottor_%2817013833678%29.jpg",
      "lat": 23.810332,
      "lng": 90.41251809999994,
      "name": "Shapla Chottor",
      "phone": "7014333352",
      "region": "South Asia"
    }
    
  ];

  getDetails(Map singleCityData, BuildContext context) {
    print(singleCityData);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SingleCity(
          cityData: singleCityData,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cities of Bangladesh"),
      ),
      body: ListView.builder(
        itemCount: clityList.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Column(
              children: [
                Image.network(
                  clityList[index]['image'],
                  height: 200,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        clityList[index]['name'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        getDetails(clityList[index], context);
                      },
                      child: const Text("View Details"),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}