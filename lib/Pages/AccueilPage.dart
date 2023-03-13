import 'package:flutter/material.dart';
import 'package:tech_quad/Pages/Home/HomePage.dart';
import 'package:carousel_slider/carousel_slider.dart';
class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
             Row(children:const  [  Text(" Mia",style: TextStyle(fontFamily: "Pacifico",fontSize: 40,color: Colors.blue),),  Text("Woezon",style: TextStyle(fontFamily: "Pacifico",fontSize: 40),),],),
               Container(
                child: CarouselSlider(
                  items:[Image.asset("assets/images/cd99fa862373943d75aa4083fe8fbd42.jpg"),Image.asset("assets/images/cd99fa862373943d75aa4083fe8fbd42.jpg")], 
                  options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                
                  scrollDirection: Axis.horizontal,
   )
                  ),
               ),
            const   Text("Faisons vos vacances de rêve",style: TextStyle(fontSize:25   ,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          
              ElevatedButton(
                style:const ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30)),)),
                  padding: MaterialStatePropertyAll(EdgeInsets.only(top: 15,bottom: 15,left: 15,right: 15))
                ),
                onPressed: (){
                  Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___)=>const HomePage()));
                }, child:Text("Commencer",style: TextStyle(fontSize:size.width*0.06,fontWeight: FontWeight.bold,),),)
            ],
          ),
        ),
      )
    ));
  }
}