import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FinaldebtRecord extends FirestoreRecord {
  FinaldebtRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "finalValue" field.
  double? _finalValue;
  double get finalValue => _finalValue ?? 0.0;
  bool hasFinalValue() => _finalValue != null;

  // "CashTransfer" field.
  List<TECHNICALpaymentStruct>? _cashTransfer;
  List<TECHNICALpaymentStruct> get cashTransfer => _cashTransfer ?? const [];
  bool hasCashTransfer() => _cashTransfer != null;

  // "admin" field.
  List<DocumentReference>? _admin;
  List<DocumentReference> get admin => _admin ?? const [];
  bool hasAdmin() => _admin != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _finalValue = castToType<double>(snapshotData['finalValue']);
    _cashTransfer = getStructList(
      snapshotData['CashTransfer'],
      TECHNICALpaymentStruct.fromMap,
    );
    _admin = getDataList(snapshotData['admin']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Finaldebt')
          : FirebaseFirestore.instance.collectionGroup('Finaldebt');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Finaldebt').doc(id);

  static Stream<FinaldebtRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FinaldebtRecord.fromSnapshot(s));

  static Future<FinaldebtRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FinaldebtRecord.fromSnapshot(s));

  static FinaldebtRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FinaldebtRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FinaldebtRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FinaldebtRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FinaldebtRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FinaldebtRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFinaldebtRecordData({
  double? finalValue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'finalValue': finalValue,
    }.withoutNulls,
  );

  return firestoreData;
}

class FinaldebtRecordDocumentEquality implements Equality<FinaldebtRecord> {
  const FinaldebtRecordDocumentEquality();

  @override
  bool equals(FinaldebtRecord? e1, FinaldebtRecord? e2) {
    const listEquality = ListEquality();
    return e1?.finalValue == e2?.finalValue &&
        listEquality.equals(e1?.cashTransfer, e2?.cashTransfer) &&
        listEquality.equals(e1?.admin, e2?.admin);
  }

  @override
  int hash(FinaldebtRecord? e) =>
      const ListEquality().hash([e?.finalValue, e?.cashTransfer, e?.admin]);

  @override
  bool isValidKey(Object? o) => o is FinaldebtRecord;
}
