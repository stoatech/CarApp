// coverage:ignore-file
import 'package:cars_api/cars_api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// Firestore implementation os CarsApi
class CarsApiFirestore implements CarsApi {
  /// Constructor
  CarsApiFirestore({
    required String collection,
  }) {
    _collectionReference =
        FirebaseFirestore.instance.collection(collection).withConverter<Car>(
              fromFirestore: (snapshots, _) => Car.fromJson(snapshots.data()!),
              toFirestore: (car, _) => car.toJson(),
            );
  }

  late final CollectionReference<Car> _collectionReference;

  @override
  Stream<List<Car>> getCars() async* {
    yield* _collectionReference
        .snapshots()
        .map((qS) => qS.docs.map((e) => e.data().copyWith(id: e.id)).toList());
  }

  @override
  Future<void> addCar({required Car car}) async {
    await _collectionReference.add(car);
    return Future.value();
  }

  @override
  Future<void> updateCar({required Car car}) async {
    return _collectionReference.doc(car.id).update(car.toJson());
  }
}
