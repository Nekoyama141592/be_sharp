import 'package:be_sharp/typedefs/firestore_typedef.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ColRefCore {
  static FirebaseFirestore get _instance => FirebaseFirestore.instance;
  static ColRef users() => _instance.collection('users');
  static ColRef userAnswers(String uid) =>
      _instance.collection('users/$uid/userAnswers');
  static ColRef muteUsers(String uid) =>
      _instance.collection('users/$uid/muteUsers');
  static ColRef privateUsers() => _instance.collection('privateUsers');
  static ColRef verifiedPurchases(String uid) =>
      _instance.collection('privateUsers/$uid/verifiedPurchases');
  static ColRef problems() => _instance.collection('problems');
}
