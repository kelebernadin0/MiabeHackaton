import 'package:flutter/material.dart';
import '../../Models/Hotel.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'Map.dart';
import 'package:read_more_text/read_more_text.dart';
import 'package:badges/badges.dart' as badges;
import 'roomPerHotel.dart';
class DetailPage extends StatelessWidget {
  DetailPage({super.key,required this.hotel, required this.index});
final Hotel hotel;
final index;
  @override
  Widget build(BuildContext context) {

    final Facilities=
    [
      {
        'name':'Restaurant',
        'icon':Icons.restaurant,
      },
      {
        'name':'24H/24',
        'icon':Icons.timelapse_rounded,
      },
      {
        'name':'Wifi',
        'icon':Icons.wifi_rounded,
      },
      {
        'name':'Service de chambre',
        'icon':Icons.room_service,
      },
      {
        'name':'Piscine',
        'icon':Icons.pool,
      },
    
    ];
    
    final img= hotel.img;
    final name =hotel.name;
    final location= hotel.location;
    final price =hotel.price;
    final informations=hotel.Informations;
    final phone =hotel.number;
    return Scaffold(
      body:CustomScrollView(
  slivers: <Widget>[
    SliverAppBar(
     leading:Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
     child: Center(
      child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.white),
        padding: MaterialStatePropertyAll(EdgeInsets.only(right: 5)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
      ),
      onPressed:(){
          Navigator.pop(context);
      },
     child: Center(child:  Icon(Icons.arrow_back_ios_new,color: Colors.grey,))
     ,),
     )
     ),
     actions: [
      Padding(padding: EdgeInsets.all(10),
      child:  ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.white),
        padding: MaterialStatePropertyAll(EdgeInsets.only()),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))
      ),
      onPressed:(){
          Navigator.pop(context);
      },
     child: Center(child:  Image.asset("assets/images/Rooms/6537802.png",scale: 20,color: Colors.grey,))
     ,),
     
      )
     ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: Container(
          decoration:const BoxDecoration(
            border: Border(bottom: BorderSide.none),
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
          ),
          child: Center(child: Text("$name",style:const  TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color.fromARGB(255, 14, 92, 156))),),
        )
      ),
      //pinned: true,
      expandedHeight: 400,
      flexibleSpace:FlexibleSpaceBar(
        background: Hero(tag: index, child: Image.asset("$img",width: double.maxFinite,fit: BoxFit.cover,),)
      ),
    ),
    SliverToBoxAdapter(
      child: Container(
        child:Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Coordonnées",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
            ],
          ),
         Padding(padding: EdgeInsets.all(10),
         child: Row(
              children: [
                const Icon(Icons.location_on,color: Color.fromARGB(255, 248, 0, 0)),
          Text("$location",style: const TextStyle(color: Colors.grey,fontSize: 18),),
              ],
             ),
         ),
         Padding(padding: EdgeInsets.all(5),
         
         child: Row(children: [Icon(Icons.phone,),SizedBox(width: 5,), Text("$phone",style: TextStyle(fontSize: 18),)])
         ,),
         Padding(padding: EdgeInsets.all(10),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Chambres Disponibles",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),Text("Voir plus",style: TextStyle(color: Colors.blue),)],
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              child: Row(
                children: [
                   Padding(padding: EdgeInsets.symmetric(horizontal: 0,),
                   child: RoomPerHotel(price: price),
                   ),
                    Padding(padding: EdgeInsets.all(10),
                   child: RoomPerHotel(price: price),
                   ),
                    Padding(padding: EdgeInsets.all(0),
                   child: RoomPerHotel(price: price),
                   ),
                    
                ],
              ),
            )
          ],
         )
         ) ,

         Padding(padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Row(children:const  [Text("Informations",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),],),
           const   SizedBox(height: 10,),
       
         Text("$informations",style: TextStyle(fontSize: 15),),
           const   SizedBox(height: 10,),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Facilities.length,
              itemBuilder: (context,index){
                final name= Facilities[index]['name'];
                final iconn=Facilities[index]['icon'] as IconData;
                return  Row(
                children: [
                   ElevatedButton.icon(onPressed:(){},
               style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.grey.shade100),
                shape:const MaterialStatePropertyAll( RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ))
               ),
               icon:Icon(iconn,color: Colors.black,),
               label: Text("$name",style: const TextStyle(color: Colors.black),),
               ),
              const  SizedBox(width: 10,)
                ],
              );
              },
              
            ),
            
          ),
        
        SizedBox(height: 15,),
        Row(
          children: [Text("Localisation",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),],
        ),
      const   SizedBox(height: 10,),
         Container(
          child: Container(
            height: 100,
            color: Colors.grey,
            child: GoogleMap(
              key: UniqueKey(),
              initialCameraPosition: const CameraPosition(
                target: LatLng(37.774, -122.4194),                      
                zoom: 12,
              ),
              markers: {
             const    Marker(
                  markerId: MarkerId('Lome'),
                  position: LatLng(37.774, -122.4194),
                  infoWindow: InfoWindow(title: 'Lome'),
      ),
    },
  ),
            
          )
         )
          ],
         ),
         )
        ],
      )
        ,)
         )
    )
  ],
)    ,
bottomNavigationBar:Container(
 
   child: Padding(padding: EdgeInsets.symmetric(horizontal:80),
   child: ElevatedButton(
  style: const ButtonStyle(
    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10))
    ),),
    padding: MaterialStatePropertyAll(EdgeInsets.all(10))
  ),
  child: const Text("Réserver une chambre",style: TextStyle(fontSize: 20),),onPressed: (){},
  ),
   ),
    
),

    );
  }
}

