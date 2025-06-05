import 'package:be_sharp/typedefs/firestore_typedef.dart';

class FirestoreClient {
  Future<void> createDoc(DocRef ref, Map<String,dynamic> json) => ref.set(json);
  Future<void> updateDoc(DocRef ref, Map<String,dynamic> json) => ref.update(json);
  Future<void> deleteDoc(DocRef ref) => ref.delete();
  FutureDoc getDoc(DocRef ref) => ref.get();
  FutureQSnapshot getDocs(MapQuery query) => query.get();
}
