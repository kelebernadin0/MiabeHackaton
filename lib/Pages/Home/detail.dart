import 'package:flutter/material.dart';
import '../../Models/Hotel.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'roomPerHotel.dart';
class DetailPage extends StatelessWidget {
 const  DetailPage({super.key,this.index,required this.img, required this.name, required this.location,required this.price,required this.informations,required this.phone,required this.lat,required this.long,});
final index;
final img;
    final name ;
    final location;
    final price;
    final informations;
    final phone;
    final lat;
    final long;
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
    
    /*;*/
    return Scaffold(
      body:CustomScrollView(
  slivers: <Widget>[
    SliverAppBar(
     leading:Padding(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
     child: Center(
      child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Colors.white),
        padding: const MaterialStatePropertyAll(EdgeInsets.only(right: 5)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
      ),
      onPressed:(){
          Navigator.pop(context);
      },
     child: const Center(child:  Icon(Icons.arrow_back_ios_new,color: Colors.grey,))
     ,),
     )
     ),
     actions: [
      Padding(padding:const  EdgeInsets.all(10),
      child:  ElevatedButton(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Colors.white),
        padding: const MaterialStatePropertyAll(EdgeInsets.only()),
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
        preferredSize: const Size.fromHeight(30),
        child: Container(
          decoration:const BoxDecoration(
            border: Border(bottom: BorderSide.none),
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
          ),
          child: Center(child: Text("$name",style:const  TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color.fromARGB(255, 14, 92, 156))),),
        )
      ),
      expandedHeight: 400,
      flexibleSpace:FlexibleSpaceBar(
        background: Hero(tag: index, child: Image.asset("$img",width: double.maxFinite,fit: BoxFit.cover,),)
      ),
    ),
    SliverToBoxAdapter(
      child: Container(
        child:Padding(padding:const  EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        children: [
         const  SizedBox(height: 20,),
          Row(
            children: const [
              Text("Coordonnées",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
            ],
          ),
         Padding(padding: const EdgeInsets.all(10),
         child: Row(
              children: [
                const Icon(Icons.location_on,color: Color.fromARGB(255, 248, 0, 0)),
          Text("$location",style: const TextStyle(color: Colors.grey,fontSize: 18),),
              ],
             ),
         ),
         Padding(padding:const  EdgeInsets.all(5),
         
         child: Row(children: [const Icon(Icons.phone,),const SizedBox(width: 5,), Text("$phone",style:const TextStyle(fontSize: 18),)])
         ,),
         Padding(padding:const  EdgeInsets.all(10),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text("Chambres Disponibles",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),Text("Voir plus",style: TextStyle(color: Colors.blue),)],
            ),
           const  SizedBox(height: 10,),
            Container(
              height: 100,
              child: Row(
                children: [
                   Padding(padding: const EdgeInsets.symmetric(horizontal: 0,),
                   child: RoomPerHotel(price: price),
                   ),
                    Padding(padding:const  EdgeInsets.all(10),
                   child: RoomPerHotel(price: price),
                   ),
                    Padding(padding: const EdgeInsets.all(0),
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
       
         Text("$informations",style:const  TextStyle(fontSize: 15),),
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
        
       const  SizedBox(height: 15,),
        Row(
          children: const [Text("Localisation",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),],
        ),
      const   SizedBox(height: 10,),
         Container(
          child: Container(
            height: 100,
            color: Colors.grey,
            child: GoogleMap(
              key: UniqueKey(),
              initialCameraPosition:CameraPosition(
                target: LatLng(lat, long),                      
                zoom: 12,
              ),
              markers: {
               Marker(
                  markerId: MarkerId('Lome'),
                  position: LatLng(lat, long),
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
 
   child: Padding(padding:const  EdgeInsets.symmetric(horizontal:80),
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

