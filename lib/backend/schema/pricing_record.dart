import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PricingRecord extends FirestoreRecord {
  PricingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userOaymentCommision" field.
  double? _userOaymentCommision;
  double get userOaymentCommision => _userOaymentCommision ?? 0.0;
  bool hasUserOaymentCommision() => _userOaymentCommision != null;

  // "editor" field.
  DocumentReference? _editor;
  DocumentReference? get editor => _editor;
  bool hasEditor() => _editor != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  void _initializeFields() {
    _userOaymentCommision =
        castToType<double>(snapshotData['userOaymentCommision']);
    _editor = snapshotData['editor'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pricing');

  static Stream<PricingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PricingRecord.fromSnapshot(s));

  static Future<PricingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PricingRecord.fromSnapshot(s));

  static PricingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PricingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PricingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PricingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PricingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PricingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPricingRecordData({
  double? userOaymentCommision,
  DocumentReference? editor,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userOaymentCommision': userOaymentCommision,
      'editor': editor,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class PricingRecordDocumentEquality implements Equality<PricingRecord> {
  const PricingRecordDocumentEquality();

  @override
  bool equals(PricingRecord? e1, PricingRecord? e2) {
    return e1?.userOaymentCommision == e2?.userOaymentCommision &&
        e1?.editor == e2?.editor &&
        e1?.time == e2?.time;
  }

  @override
  int hash(PricingRecord? e) =>
      const ListEquality().hash([e?.userOaymentCommision, e?.editor, e?.time]);

  @override
  bool isValidKey(Object? o) => o is PricingRecord;
}
