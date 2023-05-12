import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../modals/categorycard.dart';
import '../widgets/categoriesbody.dart';
import '../widgets/costumeappbar.dart';


class categoriesscreen extends StatelessWidget {
 categoriesscreen({super.key});
CollectionReference categories = FirebaseFirestore.instance.collection('categories');
String id="catscreeen";
  @override
  Widget build(BuildContext context) {
   return  StreamBuilder<QuerySnapshot>(

      stream: categories.snapshots(),
    
      builder: (context, snapshot) {
     
        if (snapshot.hasData) {
               List<cardcat> categories=[];
   for(int i=0;i<snapshot.data!.docs.length; i++){
    categories.add( cardcat(data:snapshot.data!.docs[i] ,) );
    
   }
return Scaffold(
        appBar:const  PreferredSize(
  preferredSize: Size.fromHeight(70),
  child:costumappbar()
        ),
        body:
         categoriebody(categories: categories==null ?[] : categories)
        );
}else {
  return Center(
    child: CircularProgressIndicator(
    
    ),
  );
}
      },
    );
     }
}

