import 'package:cloud_firestore/cloud_firestore.dart';

final CollectionReference _foods =
    FirebaseFirestore.instance.collection('foods');

class FirestoreService {
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');
  Stream<QuerySnapshot> getUsers() {
    final usersStream = users.snapshots();
    return usersStream;
  }

  Stream<QuerySnapshot> getFoods() {
    return _foods.snapshots();
  }
}
