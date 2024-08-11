import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TechniclaReviewsRecord extends FirestoreRecord {
  TechniclaReviewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "techRef" field.
  DocumentReference? _techRef;
  DocumentReference? get techRef => _techRef;
  bool hasTechRef() => _techRef != null;

  // "rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "tecnicainName" field.
  String? _tecnicainName;
  String get tecnicainName => _tecnicainName ?? '';
  bool hasTecnicainName() => _tecnicainName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _time = snapshotData['time'] as DateTime?;
    _techRef = snapshotData['techRef'] as DocumentReference?;
    _rate = castToType<double>(snapshotData['rate']);
    _comment = snapshotData['comment'] as String?;
    _tecnicainName = snapshotData['tecnicainName'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('techniclaReviews')
          : FirebaseFirestore.instance.collectionGroup('techniclaReviews');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('techniclaReviews').doc(id);

  static Stream<TechniclaReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TechniclaReviewsRecord.fromSnapshot(s));

  static Future<TechniclaReviewsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TechniclaReviewsRecord.fromSnapshot(s));

  static TechniclaReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TechniclaReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TechniclaReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TechniclaReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TechniclaReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TechniclaReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTechniclaReviewsRecordData({
  DateTime? time,
  DocumentReference? techRef,
  double? rate,
  String? comment,
  String? tecnicainName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'techRef': techRef,
      'rate': rate,
      'comment': comment,
      'tecnicainName': tecnicainName,
    }.withoutNulls,
  );

  return firestoreData;
}

class TechniclaReviewsRecordDocumentEquality
    implements Equality<TechniclaReviewsRecord> {
  const TechniclaReviewsRecordDocumentEquality();

  @override
  bool equals(TechniclaReviewsRecord? e1, TechniclaReviewsRecord? e2) {
    return e1?.time == e2?.time &&
        e1?.techRef == e2?.techRef &&
        e1?.rate == e2?.rate &&
        e1?.comment == e2?.comment &&
        e1?.tecnicainName == e2?.tecnicainName;
  }

  @override
  int hash(TechniclaReviewsRecord? e) => const ListEquality()
      .hash([e?.time, e?.techRef, e?.rate, e?.comment, e?.tecnicainName]);

  @override
  bool isValidKey(Object? o) => o is TechniclaReviewsRecord;
}
