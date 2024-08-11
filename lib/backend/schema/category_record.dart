import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryRecord extends FirestoreRecord {
  CategoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ArName" field.
  String? _arName;
  String get arName => _arName ?? '';
  bool hasArName() => _arName != null;

  // "EnName" field.
  String? _enName;
  String get enName => _enName ?? '';
  bool hasEnName() => _enName != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "cardColor1" field.
  Color? _cardColor1;
  Color? get cardColor1 => _cardColor1;
  bool hasCardColor1() => _cardColor1 != null;

  // "cardColor2" field.
  Color? _cardColor2;
  Color? get cardColor2 => _cardColor2;
  bool hasCardColor2() => _cardColor2 != null;

  // "visibility" field.
  bool? _visibility;
  bool get visibility => _visibility ?? false;
  bool hasVisibility() => _visibility != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  void _initializeFields() {
    _arName = snapshotData['ArName'] as String?;
    _enName = snapshotData['EnName'] as String?;
    _image = snapshotData['image'] as String?;
    _cardColor1 = getSchemaColor(snapshotData['cardColor1']);
    _cardColor2 = getSchemaColor(snapshotData['cardColor2']);
    _visibility = snapshotData['visibility'] as bool?;
    _index = castToType<int>(snapshotData['index']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Category');

  static Stream<CategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoryRecord.fromSnapshot(s));

  static Future<CategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoryRecord.fromSnapshot(s));

  static CategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoryRecordData({
  String? arName,
  String? enName,
  String? image,
  Color? cardColor1,
  Color? cardColor2,
  bool? visibility,
  int? index,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ArName': arName,
      'EnName': enName,
      'image': image,
      'cardColor1': cardColor1,
      'cardColor2': cardColor2,
      'visibility': visibility,
      'index': index,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoryRecordDocumentEquality implements Equality<CategoryRecord> {
  const CategoryRecordDocumentEquality();

  @override
  bool equals(CategoryRecord? e1, CategoryRecord? e2) {
    return e1?.arName == e2?.arName &&
        e1?.enName == e2?.enName &&
        e1?.image == e2?.image &&
        e1?.cardColor1 == e2?.cardColor1 &&
        e1?.cardColor2 == e2?.cardColor2 &&
        e1?.visibility == e2?.visibility &&
        e1?.index == e2?.index;
  }

  @override
  int hash(CategoryRecord? e) => const ListEquality().hash([
        e?.arName,
        e?.enName,
        e?.image,
        e?.cardColor1,
        e?.cardColor2,
        e?.visibility,
        e?.index
      ]);

  @override
  bool isValidKey(Object? o) => o is CategoryRecord;
}
