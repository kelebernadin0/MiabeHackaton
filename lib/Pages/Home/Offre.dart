import 'package:flutter/material.dart';
class OffreSection extends StatelessWidget {
  const OffreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child:  Row(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                child: Image.asset("assets/images/Rooms/5c15361323ec01847e3bc0436ccad619.jpg",scale: 4,),
                     ),
              SizedBox(width: 10,),
            Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                  children: const [
                    Text("Delta Suite",style: TextStyle(fontFamily: "Poppins",fontSize: 18),),
                    //SizedBox(width: 40,),
                   
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: const [
                    Icon(Icons.location_on_outlined,color: Colors.red,),
                    Text("Hotel Sarakawa",style: TextStyle(color: Colors.grey),),
                  
                  ],
                ),
                 SizedBox(height: 5,),
                 Text("250 045/ Nuit",style: TextStyle(fontSize: 15),),
                
                
              ],
            )
          ],
        ),      
        );
  }
}