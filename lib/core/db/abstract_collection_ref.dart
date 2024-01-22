import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AbstractCollectionRef<T> {
  CollectionReference get collectionRef;
  CollectionReference<T> get withConverter;
}
