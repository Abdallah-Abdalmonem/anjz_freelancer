import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserReviewsRecord extends FirestoreRecord {
  UserReviewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _time = snapshotData['time'] as DateTime?;
    _rating = castToType<double>(snapshotData['rating']);
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _comment = snapshotData['comment'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userReviews')
          : FirebaseFirestore.instance.collectionGroup('userReviews');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('userReviews').doc(id);

  static Stream<UserReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserReviewsRecord.fromSnapshot(s));

  static Future<UserReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserReviewsRecord.fromSnapshot(s));

  static UserReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserReviewsRecordData({
  DateTime? time,
  double? rating,
  DocumentReference? userRef,
  String? comment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'rating': rating,
      'userRef': userRef,
      'comment': comment,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserReviewsRecordDocumentEquality implements Equality<UserReviewsRecord> {
  const UserReviewsRecordDocumentEquality();

  @override
  bool equals(UserReviewsRecord? e1, UserReviewsRecord? e2) {
    return e1?.time == e2?.time &&
        e1?.rating == e2?.rating &&
        e1?.userRef == e2?.userRef &&
        e1?.comment == e2?.comment;
  }

  @override
  int hash(UserReviewsRecord? e) =>
      const ListEquality().hash([e?.time, e?.rating, e?.userRef, e?.comment]);

  @override
  bool isValidKey(Object? o) => o is UserReviewsRecord;
}
