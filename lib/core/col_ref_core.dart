import 'package:be_sharp/typedefs/firestore_typedef.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ColRefCore {
  static ColRef users() => FirebaseFirestore.instance.collection('users');
}