import 'package:cloud_firestore/cloud_firestore.dart';

class FireBaseHandler{

  Future<Map<String, dynamic>> getData()async{
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    Map<String,dynamic> data=users.doc('0').get() as Map<String,dynamic>;
    return data;
  }
}