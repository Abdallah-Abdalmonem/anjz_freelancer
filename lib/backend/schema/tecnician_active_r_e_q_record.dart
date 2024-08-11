import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TecnicianActiveREQRecord extends FirestoreRecord {
  TecnicianActiveREQRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "REQ" field.
  DocumentReference? _req;
  DocumentReference? get req => _req;
  bool hasReq() => _req != null;

  // "TIME" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "ended" field.
  bool? _ended;
  bool get ended => _ended ?? false;
  bool hasEnded() => _ended != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _req = snapshotData['REQ'] as DocumentReference?;
    _time = snapshotData['TIME'] as DateTime?;
    _ended = snapshotData['ended'] as bool?;
    _active = snapshotData['active'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('TecnicianActiveREQ')
          : FirebaseFirestore.instance.collectionGroup('TecnicianActiveREQ');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('TecnicianActiveREQ').doc(id);

  static Stream<TecnicianActiveREQRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TecnicianActiveREQRecord.fromSnapshot(s));

  static Future<TecnicianActiveREQRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TecnicianActiveREQRecord.fromSnapshot(s));

  static TecnicianActiveREQRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TecnicianActiveREQRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TecnicianActiveREQRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TecnicianActiveREQRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TecnicianActiveREQRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TecnicianActiveREQRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTecnicianActiveREQRecordData({
  DocumentReference? req,
  DateTime? time,
  bool? ended,
  bool? active,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'REQ': req,
      'TIME': time,
      'ended': ended,
      'active': active,
    }.withoutNulls,
  );

  return firestoreData;
}

class TecnicianActiveREQRecordDocumentEquality
    implements Equality<TecnicianActiveREQRecord> {
  const TecnicianActiveREQRecordDocumentEquality();

  @override
  bool equals(TecnicianActiveREQRecord? e1, TecnicianActiveREQRecord? e2) {
    return e1?.req == e2?.req &&
        e1?.time == e2?.time &&
        e1?.ended == e2?.ended &&
        e1?.active == e2?.active;
  }

  @override
  int hash(TecnicianActiveREQRecord? e) =>
      const ListEquality().hash([e?.req, e?.time, e?.ended, e?.active]);

  @override
  bool isValidKey(Object? o) => o is TecnicianActiveREQRecord;
}
