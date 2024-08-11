import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerserviceRecord extends FirestoreRecord {
  CustomerserviceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userList" field.
  List<DocumentReference>? _userList;
  List<DocumentReference> get userList => _userList ?? const [];
  bool hasUserList() => _userList != null;

  // "chayRef" field.
  List<DocumentReference>? _chayRef;
  List<DocumentReference> get chayRef => _chayRef ?? const [];
  bool hasChayRef() => _chayRef != null;

  void _initializeFields() {
    _userList = getDataList(snapshotData['userList']);
    _chayRef = getDataList(snapshotData['chayRef']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Customerservice');

  static Stream<CustomerserviceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CustomerserviceRecord.fromSnapshot(s));

  static Future<CustomerserviceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CustomerserviceRecord.fromSnapshot(s));

  static CustomerserviceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CustomerserviceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CustomerserviceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CustomerserviceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CustomerserviceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CustomerserviceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCustomerserviceRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class CustomerserviceRecordDocumentEquality
    implements Equality<CustomerserviceRecord> {
  const CustomerserviceRecordDocumentEquality();

  @override
  bool equals(CustomerserviceRecord? e1, CustomerserviceRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.userList, e2?.userList) &&
        listEquality.equals(e1?.chayRef, e2?.chayRef);
  }

  @override
  int hash(CustomerserviceRecord? e) =>
      const ListEquality().hash([e?.userList, e?.chayRef]);

  @override
  bool isValidKey(Object? o) => o is CustomerserviceRecord;
}
