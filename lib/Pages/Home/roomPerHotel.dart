import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
class RoomPerHotel extends StatelessWidget {
  const RoomPerHotel({super.key,required this.price});
  final price;
  @override
  Widget build(BuildContext context) {
    return  badges.Badge(
                    position: badges.BadgePosition.bottomEnd(),
                    badgeStyle: badges.BadgeStyle(shape: badges.BadgeShape.square,borderRadius: BorderRadius.circular(10),badgeColor: Colors.blue),
                    badgeContent: Text("$price",style: TextStyle(color: Colors.white,
                    fontSize: 10,
                    ),),
                    child: Container(
                      height: 80,
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/Rooms/532147d7815028ab75c6422c240c20e0.jpg",fit: BoxFit.cover,),
                      )
                     ),
                   );
                  
               
  }
}