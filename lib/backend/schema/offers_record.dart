import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OffersRecord extends FirestoreRecord {
  OffersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  bool hasValue() => _value != null;

  // "reqRef" field.
  DocumentReference? _reqRef;
  DocumentReference? get reqRef => _reqRef;
  bool hasReqRef() => _reqRef != null;

  // "technical" field.
  DocumentReference? _technical;
  DocumentReference? get technical => _technical;
  bool hasTechnical() => _technical != null;

  // "Accepted" field.
  bool? _accepted;
  bool get accepted => _accepted ?? false;
  bool hasAccepted() => _accepted != null;

  // "offerDetails" field.
  String? _offerDetails;
  String get offerDetails => _offerDetails ?? '';
  bool hasOfferDetails() => _offerDetails != null;

  void _initializeFields() {
    _time = snapshotData['time'] as DateTime?;
    _value = castToType<double>(snapshotData['value']);
    _reqRef = snapshotData['reqRef'] as DocumentReference?;
    _technical = snapshotData['technical'] as DocumentReference?;
    _accepted = snapshotData['Accepted'] as bool?;
    _offerDetails = snapshotData['offerDetails'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('offers');

  static Stream<OffersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OffersRecord.fromSnapshot(s));

  static Future<OffersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OffersRecord.fromSnapshot(s));

  static OffersRecord fromSnapshot(DocumentSnapshot snapshot) => OffersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OffersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OffersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OffersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OffersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOffersRecordData({
  DateTime? time,
  double? value,
  DocumentReference? reqRef,
  DocumentReference? technical,
  bool? accepted,
  String? offerDetails,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'value': value,
      'reqRef': reqRef,
      'technical': technical,
      'Accepted': accepted,
      'offerDetails': offerDetails,
    }.withoutNulls,
  );

  return firestoreData;
}

class OffersRecordDocumentEquality implements Equality<OffersRecord> {
  const OffersRecordDocumentEquality();

  @override
  bool equals(OffersRecord? e1, OffersRecord? e2) {
    return e1?.time == e2?.time &&
        e1?.value == e2?.value &&
        e1?.reqRef == e2?.reqRef &&
        e1?.technical == e2?.technical &&
        e1?.accepted == e2?.accepted &&
        e1?.offerDetails == e2?.offerDetails;
  }

  @override
  int hash(OffersRecord? e) => const ListEquality().hash([
        e?.time,
        e?.value,
        e?.reqRef,
        e?.technical,
        e?.accepted,
        e?.offerDetails
      ]);

  @override
  bool isValidKey(Object? o) => o is OffersRecord;
}
