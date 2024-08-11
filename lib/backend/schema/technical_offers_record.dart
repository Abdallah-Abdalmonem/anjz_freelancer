import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TechnicalOffersRecord extends FirestoreRecord {
  TechnicalOffersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "canceld" field.
  bool? _canceld;
  bool get canceld => _canceld ?? false;
  bool hasCanceld() => _canceld != null;

  // "Accepted" field.
  bool? _accepted;
  bool get accepted => _accepted ?? false;
  bool hasAccepted() => _accepted != null;

  // "ended" field.
  bool? _ended;
  bool get ended => _ended ?? false;
  bool hasEnded() => _ended != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _ref = snapshotData['ref'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _canceld = snapshotData['canceld'] as bool?;
    _accepted = snapshotData['Accepted'] as bool?;
    _ended = snapshotData['ended'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('technicalOffers')
          : FirebaseFirestore.instance.collectionGroup('technicalOffers');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('technicalOffers').doc(id);

  static Stream<TechnicalOffersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TechnicalOffersRecord.fromSnapshot(s));

  static Future<TechnicalOffersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TechnicalOffersRecord.fromSnapshot(s));

  static TechnicalOffersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TechnicalOffersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TechnicalOffersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TechnicalOffersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TechnicalOffersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TechnicalOffersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTechnicalOffersRecordData({
  DocumentReference? ref,
  DateTime? time,
  bool? canceld,
  bool? accepted,
  bool? ended,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ref': ref,
      'time': time,
      'canceld': canceld,
      'Accepted': accepted,
      'ended': ended,
    }.withoutNulls,
  );

  return firestoreData;
}

class TechnicalOffersRecordDocumentEquality
    implements Equality<TechnicalOffersRecord> {
  const TechnicalOffersRecordDocumentEquality();

  @override
  bool equals(TechnicalOffersRecord? e1, TechnicalOffersRecord? e2) {
    return e1?.ref == e2?.ref &&
        e1?.time == e2?.time &&
        e1?.canceld == e2?.canceld &&
        e1?.accepted == e2?.accepted &&
        e1?.ended == e2?.ended;
  }

  @override
  int hash(TechnicalOffersRecord? e) => const ListEquality()
      .hash([e?.ref, e?.time, e?.canceld, e?.accepted, e?.ended]);

  @override
  bool isValidKey(Object? o) => o is TechnicalOffersRecord;
}
