import 'package:flutter/material.dart';
class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Column(
        children: [
          const SizedBox(height:30 ,),
     const    SizedBox(height: 10,),
          
        Padding(padding: const EdgeInsets.only(bottom: 20),
        child:  Row(
          children: [
           const    SizedBox(width: 10,),
            Container(
              width: size.width*0.78,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                 alignLabelWithHint: true,
                 contentPadding: const EdgeInsets.all(10), 
                  border: const OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15))),
                 filled: true,
                  hintText: 'Search',
                  
                  prefixIcon: Icon(Icons.search,color: Colors.grey[300])

                    ),
              ),
            ),
          Container(
            height: 40,
            child:   ElevatedButton(
              style:const ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:BorderRadius.only(topLeft: Radius.circular(0),bottomRight: Radius.circular(15),topRight: Radius.circular(15)) ))
              ),
              onPressed: (){}, child: const Icon(Icons.search)),
          ),
          ],
        ),
        )
          
        ],
      );
  }
}