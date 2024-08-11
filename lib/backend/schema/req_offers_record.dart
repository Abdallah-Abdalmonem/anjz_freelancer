import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReqOffersRecord extends FirestoreRecord {
  ReqOffersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "offerRef" field.
  DocumentReference? _offerRef;
  DocumentReference? get offerRef => _offerRef;
  bool hasOfferRef() => _offerRef != null;

  // "technicalRef" field.
  DocumentReference? _technicalRef;
  DocumentReference? get technicalRef => _technicalRef;
  bool hasTechnicalRef() => _technicalRef != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "accepted" field.
  bool? _accepted;
  bool get accepted => _accepted ?? false;
  bool hasAccepted() => _accepted != null;

  // "value" field.
  int? _value;
  int get value => _value ?? 0;
  bool hasValue() => _value != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _offerRef = snapshotData['offerRef'] as DocumentReference?;
    _technicalRef = snapshotData['technicalRef'] as DocumentReference?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _accepted = snapshotData['accepted'] as bool?;
    _value = castToType<int>(snapshotData['value']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('reqOffers')
          : FirebaseFirestore.instance.collectionGroup('reqOffers');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('reqOffers').doc(id);

  static Stream<ReqOffersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReqOffersRecord.fromSnapshot(s));

  static Future<ReqOffersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReqOffersRecord.fromSnapshot(s));

  static ReqOffersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReqOffersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReqOffersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReqOffersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReqOffersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReqOffersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReqOffersRecordData({
  DocumentReference? offerRef,
  DocumentReference? technicalRef,
  DocumentReference? userRef,
  DateTime? time,
  bool? accepted,
  int? value,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'offerRef': offerRef,
      'technicalRef': technicalRef,
      'userRef': userRef,
      'time': time,
      'accepted': accepted,
      'value': value,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReqOffersRecordDocumentEquality implements Equality<ReqOffersRecord> {
  const ReqOffersRecordDocumentEquality();

  @override
  bool equals(ReqOffersRecord? e1, ReqOffersRecord? e2) {
    return e1?.offerRef == e2?.offerRef &&
        e1?.technicalRef == e2?.technicalRef &&
        e1?.userRef == e2?.userRef &&
        e1?.time == e2?.time &&
        e1?.accepted == e2?.accepted &&
        e1?.value == e2?.value;
  }

  @override
  int hash(ReqOffersRecord? e) => const ListEquality().hash([
        e?.offerRef,
        e?.technicalRef,
        e?.userRef,
        e?.time,
        e?.accepted,
        e?.value
      ]);

  @override
  bool isValidKey(Object? o) => o is ReqOffersRecord;
}
