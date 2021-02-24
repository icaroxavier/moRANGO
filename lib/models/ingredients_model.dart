import 'package:cloud_firestore/cloud_firestore.dart';

class IngredientesModel{

 // var ingredients;
 Map<String, dynamic> ingData = Map();

 Future<Null> _loadIngredientes() async{
   DocumentSnapshot docIngred = await FirebaseFirestore.instance
       .collection("Ingredientes")
       .doc()
       .get();

   ingData = docIngred.data();
 }

}