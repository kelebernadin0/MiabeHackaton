import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'BodyActive.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int _selected=0;
  
 List <IconData> ListIcons=[Icons.location_on,Icons.location_on,Icons.location_on,Icons.location_on];
 
 
 
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const  Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        leading: const SizedBox(width: 0,),
        leadingWidth:0,
        title: Padding(padding:const  EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,width: 1),
            color: Colors.white12,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            
            
          ),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                height: 40,
                width: 40,
                child: ClipOval(
                  child: Image.asset("assets/images/Mentoring-Men-Our-Mission-500x550-1.jpg",fit: BoxFit.cover,),),
            ),
             Container(
              width: size.width*0.5,
              height: 40,
              child:TextButton(
                  onPressed: (){
  
                  },
                child:  TextField(
                decoration: InputDecoration(
                 
                 alignLabelWithHint: true,
                 contentPadding:const  EdgeInsets.all(10), 
                  border: const OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15))),
                  hintText: 'Search',
                  
                  prefixIcon: Icon(Icons.search,color: Colors.grey[300])

                    ),
              ),)
            ),
            TextButton(onPressed: (){},
             child:const  badges.Badge(
              badgeContent: Text("12",style: TextStyle(color: Colors.white),),
              child: Icon(Icons.notifications,color: Colors.grey,size: 40,),
             )
             )

          ],
        ),
        )
        )
      ),
      body:const BodySection(),
    
  bottomNavigationBar: BottomNavigationBar(
    elevation: 0,
    selectedItemColor: Colors.blue,
    selectedFontSize: 18,
    currentIndex: _selected,
    onTap: (value) {
      setState(() {
        _selected=value;
      });
    },
  type: BottomNavigationBarType.fixed, 
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home,),label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.book_online),label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.location_on),label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.notifications),label: ''),
    ],
  ),

    );
  }
}