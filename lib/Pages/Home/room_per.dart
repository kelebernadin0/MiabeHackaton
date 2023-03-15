import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
class Room extends StatelessWidget {
  const Room ({super.key,required this.location,required this.name});
final name;
final location;
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    
    return 
     Card(
    
       shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25))
       ),
      child: badges.Badge(
      badgeContent: Image.asset("assets/images/Rooms/6537802.png",scale: 20,color: Colors.white,),
      badgeStyle:const  badges.BadgeStyle(badgeColor: Colors.blue,shape: badges.BadgeShape.square,borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))),

      position: badges.BadgePosition.bottomEnd(bottom:1,end: 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,  
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                child: Container(
                  height: size.height*0.35,
                  width: size.width>300?300:size.width*0.8,
                  child: Image.asset("assets/images/Hotel-Eda-Oba-Lome-Exterior.jpeg",fit: BoxFit.cover,),
                )
                     ),
           Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
           child:  Column(
            
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Text("$name",style:const  TextStyle(fontSize: 20,fontFamily: "Poppins"),),
                  ],
                ),
               const  SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  const   Icon(Icons.location_on_outlined,color: Colors.red,),
                    Text("$location",style: const TextStyle(color: Colors.grey),),
                    
                  ],

                ),
               
              ],
            )  ,
           ) 
      ],
    ),
    ),
    );
  }
}