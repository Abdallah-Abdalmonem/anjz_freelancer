import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequesToJoinAsaTechnicianRecord extends FirestoreRecord {
  RequesToJoinAsaTechnicianRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "technicalData" field.
  DocumentReference? _technicalData;
  DocumentReference? get technicalData => _technicalData;
  bool hasTechnicalData() => _technicalData != null;

  // "accepted" field.
  bool? _accepted;
  bool get accepted => _accepted ?? false;
  bool hasAccepted() => _accepted != null;

  // "refused" field.
  bool? _refused;
  bool get refused => _refused ?? false;
  bool hasRefused() => _refused != null;

  // "seen" field.
  bool? _seen;
  bool get seen => _seen ?? false;
  bool hasSeen() => _seen != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _time = snapshotData['time'] as DateTime?;
    _technicalData = snapshotData['technicalData'] as DocumentReference?;
    _accepted = snapshotData['accepted'] as bool?;
    _refused = snapshotData['refused'] as bool?;
    _seen = snapshotData['seen'] as bool?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RequesToJoinAsaTechnician');

  static Stream<RequesToJoinAsaTechnicianRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => RequesToJoinAsaTechnicianRecord.fromSnapshot(s));

  static Future<RequesToJoinAsaTechnicianRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RequesToJoinAsaTechnicianRecord.fromSnapshot(s));

  static RequesToJoinAsaTechnicianRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      RequesToJoinAsaTechnicianRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequesToJoinAsaTechnicianRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequesToJoinAsaTechnicianRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequesToJoinAsaTechnicianRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequesToJoinAsaTechnicianRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequesToJoinAsaTechnicianRecordData({
  DateTime? time,
  DocumentReference? technicalData,
  bool? accepted,
  bool? refused,
  bool? seen,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'technicalData': technicalData,
      'accepted': accepted,
      'refused': refused,
      'seen': seen,
      'userRef': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequesToJoinAsaTechnicianRecordDocumentEquality
    implements Equality<RequesToJoinAsaTechnicianRecord> {
  const RequesToJoinAsaTechnicianRecordDocumentEquality();

  @override
  bool equals(RequesToJoinAsaTechnicianRecord? e1,
      RequesToJoinAsaTechnicianRecord? e2) {
    return e1?.time == e2?.time &&
        e1?.technicalData == e2?.technicalData &&
        e1?.accepted == e2?.accepted &&
        e1?.refused == e2?.refused &&
        e1?.seen == e2?.seen &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(RequesToJoinAsaTechnicianRecord? e) => const ListEquality().hash([
        e?.time,
        e?.technicalData,
        e?.accepted,
        e?.refused,
        e?.seen,
        e?.userRef
      ]);

  @override
  bool isValidKey(Object? o) => o is RequesToJoinAsaTechnicianRecord;
}
