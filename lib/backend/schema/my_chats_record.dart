import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyChatsRecord extends FirestoreRecord {
  MyChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "REF" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  // "TIME" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _ref = snapshotData['REF'] as DocumentReference?;
    _time = snapshotData['TIME'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('MyChats')
          : FirebaseFirestore.instance.collectionGroup('MyChats');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('MyChats').doc(id);

  static Stream<MyChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyChatsRecord.fromSnapshot(s));

  static Future<MyChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyChatsRecord.fromSnapshot(s));

  static MyChatsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyChatsRecordData({
  DocumentReference? ref,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'REF': ref,
      'TIME': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyChatsRecordDocumentEquality implements Equality<MyChatsRecord> {
  const MyChatsRecordDocumentEquality();

  @override
  bool equals(MyChatsRecord? e1, MyChatsRecord? e2) {
    return e1?.ref == e2?.ref && e1?.time == e2?.time;
  }

  @override
  int hash(MyChatsRecord? e) => const ListEquality().hash([e?.ref, e?.time]);

  @override
  bool isValidKey(Object? o) => o is MyChatsRecord;
}
