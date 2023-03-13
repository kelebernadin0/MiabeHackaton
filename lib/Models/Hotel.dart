import 'package:flutter/material.dart';

class Hotel {
   Hotel({this.img,this.name, this.location,this.price,required this.number});
  String?  img;
  String? name;
  String? location;
  String? price;
  String? number;
  String Informations="L'établissement comprend un café de style décontracté, 2 bars chics, 3 restaurants branchés (dont 1 servant une cuisine chinoise), des courts de tennis et une piscine extérieure bordée de cabanons. Il possède également un spa de jour et une salle de sport. Un espace de réunion est à disposition.";
  static List<Hotel> Hotels()
  {
    return [
      Hotel(
        img:"assets/images/330742792.jpg",
         name: "Hotel 2 Février", 
         location: "Lomé"
         , price: "78 945 FCFA",
         number: "22 45 78 65"
         ),
      Hotel(img:"assets/images/Hotel-Eda-Oba-Lome-Exterior.jpeg", name: "Hotel Eda Oba", location: "Eyadema B.P. 3481, Lomé", price: "47 000 FCFA",number: "22 45 78 65"),
     Hotel(img:"assets/images/arton233.jpg", name: "Hotel Sarakawa", location: "Boulevard Du Mono, Lomé", price: "58 950 FCFA",number: "22 45 78 65"),
      Hotel(img:"assets/images/Rooms/4a52cfa8e8f6df1d359caebed9487e30f04c46fe.jpeg", name: "Hotel BKBG ", location: "Lomé", price: "78 945 FCFAs",number: "22 45 78 65"),
      
    ];
  }
}