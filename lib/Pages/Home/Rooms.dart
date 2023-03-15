import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tech_quad/Models/Hotel.dart'; 
import '../../Models/Hotel_model.dart';
import '../../Models/api_service.dart';
import 'room_per.dart';
import 'detail.dart';
class RoomSection extends StatefulWidget {
  const RoomSection({super.key});

  @override
  State<RoomSection> createState() => _RoomSectionState();
}

class _RoomSectionState extends State<RoomSection> {
  @override
   Future<List<hotel?>> getData() async
  {
    return await APIservice.getHotels();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);
             if(snapshot.hasData)
             {
              final hotels=snapshot.data!;
              return ListView.separated(
               scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return const SizedBox(width: 20,);
            },
                 itemCount: hotels.length,
                itemBuilder: (context, index) {
                  final hotel =hotels[index];
                  final date=hotel!.createdAt;
                  final name=hotel!.name;
                  final desc=hotel!.description;
                  final lon=hotel!.longitude;
                  final lat=hotel!.latitude;
                  return  GestureDetector(
                child: Hero(child: Room(location: desc, name: name),tag:index ,),
               onTap: (){
                Navigator.push(context,PageRouteBuilder(pageBuilder: (_,__,___)=>DetailPage(img:"assets/images/Hotel-Eda-Oba-Lome-Exterior.jpeg",index: index,informations: desc,location: desc,name: name,phone: name,price: name,lat: lat,long: lon,)));
               },
              );
                 
                },
                );
             }else
             {
              return Center(child: CircularProgressIndicator());
             }
                 
            
            },
          );
  }
}