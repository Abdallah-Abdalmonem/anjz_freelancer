import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CashPayedRequestsRecord extends FirestoreRecord {
  CashPayedRequestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "req" field.
  DocumentReference? _req;
  DocumentReference? get req => _req;
  bool hasReq() => _req != null;

  // "offer" field.
  DocumentReference? _offer;
  DocumentReference? get offer => _offer;
  bool hasOffer() => _offer != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  bool hasValue() => _value != null;

  // "reciveTime" field.
  DateTime? _reciveTime;
  DateTime? get reciveTime => _reciveTime;
  bool hasReciveTime() => _reciveTime != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _req = snapshotData['req'] as DocumentReference?;
    _offer = snapshotData['offer'] as DocumentReference?;
    _value = castToType<double>(snapshotData['value']);
    _reciveTime = snapshotData['reciveTime'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('CashPayedRequests')
          : FirebaseFirestore.instance.collectionGroup('CashPayedRequests');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('CashPayedRequests').doc(id);

  static Stream<CashPayedRequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CashPayedRequestsRecord.fromSnapshot(s));

  static Future<CashPayedRequestsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CashPayedRequestsRecord.fromSnapshot(s));

  static CashPayedRequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CashPayedRequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CashPayedRequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CashPayedRequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CashPayedRequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CashPayedRequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCashPayedRequestsRecordData({
  DocumentReference? req,
  DocumentReference? offer,
  double? value,
  DateTime? reciveTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'req': req,
      'offer': offer,
      'value': value,
      'reciveTime': reciveTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class CashPayedRequestsRecordDocumentEquality
    implements Equality<CashPayedRequestsRecord> {
  const CashPayedRequestsRecordDocumentEquality();

  @override
  bool equals(CashPayedRequestsRecord? e1, CashPayedRequestsRecord? e2) {
    return e1?.req == e2?.req &&
        e1?.offer == e2?.offer &&
        e1?.value == e2?.value &&
        e1?.reciveTime == e2?.reciveTime;
  }

  @override
  int hash(CashPayedRequestsRecord? e) =>
      const ListEquality().hash([e?.req, e?.offer, e?.value, e?.reciveTime]);

  @override
  bool isValidKey(Object? o) => o is CashPayedRequestsRecord;
}
