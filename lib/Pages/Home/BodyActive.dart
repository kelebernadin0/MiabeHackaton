import 'package:flutter/material.dart';
import 'package:tech_quad/Models/Hotel.dart';
import 'package:badges/badges.dart' as badges;
import 'Rooms.dart';
import 'Header.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import '../AccueilPage.dart';
import 'detail.dart';
import 'Offre.dart';
class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Hotel> hotels=Hotel.Hotels();
    final size=MediaQuery.of(context).size;
    return SingleChildScrollView(
       // physics: NeverScrollableScrollPhysics(),
        child: Column(
        children: [
          
      
       Padding(padding: EdgeInsets.only(right: 15,left: 15,top: 20),
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
      
       Padding(padding: EdgeInsets.symmetric(vertical: 10),
       child:  SizedBox(
          height: size.height*0.5,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 20,);
            },
                itemCount: hotels.length,
                itemBuilder: (context, index) {

                    return  GestureDetector(
                child: Hero(child:RoomSection(hotel: hotels[index],),tag:index ,),
               onTap: (){
                Navigator.push(context,PageRouteBuilder(pageBuilder: (_,__,___)=>DetailPage(hotel: hotels[index],index: index,)));
               },
              );
          
                },
                
            
          )
          
        ),
       ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical:20 ),
        child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Meilleures Offres",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                Text("View All",style: TextStyle(color: Colors.blue),)
              ],
        ),
        ), 
          OffreSection(),
          OffreSection(),
          OffreSection(),
          OffreSection(),
        ],
        ),
      );
  }
}