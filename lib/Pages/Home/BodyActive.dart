import 'package:flutter/material.dart';
import 'package:tech_quad/Models/Hotel.dart';
import 'Rooms.dart';
import 'detail.dart';
import 'Offre.dart';
class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Hotel> hotels=Hotel.Hotels();
    final size=MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
        children: [
       Padding(padding:const  EdgeInsets.only(right: 15,left: 15,top: 20),
       child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            children: const [
                Text("Les Hotels Populaires",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            ],
          ),
            Row(
            children: const [
               Text("View All",style: TextStyle(color: Colors.blue),),
                 SizedBox(width: 10,),
            ],
          ),
           
          ],
        ),
       ),
      
       Padding(padding: const EdgeInsets.symmetric(vertical: 10),
       child:  SizedBox(
          height: size.height*0.55,
          child: RoomSection()
          
        ),
       ),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 15,vertical:20 ),
        child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Meilleures Offres",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                Text("View All",style: TextStyle(color: Colors.blue),)
              ],
        ),
        ), 
          const OffreSection(),
         const OffreSection(),
         const OffreSection(),
         const OffreSection(),
        ],
        ),
      );
  }
}