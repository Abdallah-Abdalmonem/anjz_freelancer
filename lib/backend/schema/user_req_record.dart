import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserReqRecord extends FirestoreRecord {
  UserReqRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ReqRef" field.
  DocumentReference? _reqRef;
  DocumentReference? get reqRef => _reqRef;
  bool hasReqRef() => _reqRef != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "open" field.
  bool? _open;
  bool get open => _open ?? false;
  bool hasOpen() => _open != null;

  // "closed" field.
  bool? _closed;
  bool get closed => _closed ?? false;
  bool hasClosed() => _closed != null;

  // "canceld" field.
  bool? _canceld;
  bool get canceld => _canceld ?? false;
  bool hasCanceld() => _canceld != null;

  // "category" field.
  DocumentReference? _category;
  DocumentReference? get category => _category;
  bool hasCategory() => _category != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _reqRef = snapshotData['ReqRef'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _open = snapshotData['open'] as bool?;
    _closed = snapshotData['closed'] as bool?;
    _canceld = snapshotData['canceld'] as bool?;
    _category = snapshotData['category'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userReq')
          : FirebaseFirestore.instance.collectionGroup('userReq');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('userReq').doc(id);

  static Stream<UserReqRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserReqRecord.fromSnapshot(s));

  static Future<UserReqRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserReqRecord.fromSnapshot(s));

  static UserReqRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserReqRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserReqRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserReqRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserReqRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserReqRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserReqRecordData({
  DocumentReference? reqRef,
  DateTime? time,
  bool? open,
  bool? closed,
  bool? canceld,
  DocumentReference? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ReqRef': reqRef,
      'time': time,
      'open': open,
      'closed': closed,
      'canceld': canceld,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserReqRecordDocumentEquality implements Equality<UserReqRecord> {
  const UserReqRecordDocumentEquality();

  @override
  bool equals(UserReqRecord? e1, UserReqRecord? e2) {
    return e1?.reqRef == e2?.reqRef &&
        e1?.time == e2?.time &&
        e1?.open == e2?.open &&
        e1?.closed == e2?.closed &&
        e1?.canceld == e2?.canceld &&
        e1?.category == e2?.category;
  }

  @override
  int hash(UserReqRecord? e) => const ListEquality()
      .hash([e?.reqRef, e?.time, e?.open, e?.closed, e?.canceld, e?.category]);

  @override
  bool isValidKey(Object? o) => o is UserReqRecord;
}
