import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvoiceRecord extends FirestoreRecord {
  InvoiceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "invoiceImage" field.
  String? _invoiceImage;
  String get invoiceImage => _invoiceImage ?? '';
  bool hasInvoiceImage() => _invoiceImage != null;

  // "invoiceValue" field.
  double? _invoiceValue;
  double get invoiceValue => _invoiceValue ?? 0.0;
  bool hasInvoiceValue() => _invoiceValue != null;

  // "serviceValue" field.
  double? _serviceValue;
  double get serviceValue => _serviceValue ?? 0.0;
  bool hasServiceValue() => _serviceValue != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "tecnical" field.
  DocumentReference? _tecnical;
  DocumentReference? get tecnical => _tecnical;
  bool hasTecnical() => _tecnical != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "invoiceImages" field.
  List<String>? _invoiceImages;
  List<String> get invoiceImages => _invoiceImages ?? const [];
  bool hasInvoiceImages() => _invoiceImages != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _invoiceImage = snapshotData['invoiceImage'] as String?;
    _invoiceValue = castToType<double>(snapshotData['invoiceValue']);
    _serviceValue = castToType<double>(snapshotData['serviceValue']);
    _time = snapshotData['time'] as DateTime?;
    _tecnical = snapshotData['tecnical'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
    _invoiceImages = getDataList(snapshotData['invoiceImages']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('invoice')
          : FirebaseFirestore.instance.collectionGroup('invoice');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('invoice').doc(id);

  static Stream<InvoiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvoiceRecord.fromSnapshot(s));

  static Future<InvoiceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvoiceRecord.fromSnapshot(s));

  static InvoiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvoiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvoiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvoiceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvoiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvoiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvoiceRecordData({
  String? invoiceImage,
  double? invoiceValue,
  double? serviceValue,
  DateTime? time,
  DocumentReference? tecnical,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'invoiceImage': invoiceImage,
      'invoiceValue': invoiceValue,
      'serviceValue': serviceValue,
      'time': time,
      'tecnical': tecnical,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvoiceRecordDocumentEquality implements Equality<InvoiceRecord> {
  const InvoiceRecordDocumentEquality();

  @override
  bool equals(InvoiceRecord? e1, InvoiceRecord? e2) {
    const listEquality = ListEquality();
    return e1?.invoiceImage == e2?.invoiceImage &&
        e1?.invoiceValue == e2?.invoiceValue &&
        e1?.serviceValue == e2?.serviceValue &&
        e1?.time == e2?.time &&
        e1?.tecnical == e2?.tecnical &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.invoiceImages, e2?.invoiceImages);
  }

  @override
  int hash(InvoiceRecord? e) => const ListEquality().hash([
        e?.invoiceImage,
        e?.invoiceValue,
        e?.serviceValue,
        e?.time,
        e?.tecnical,
        e?.user,
        e?.invoiceImages
      ]);

  @override
  bool isValidKey(Object? o) => o is InvoiceRecord;
}
