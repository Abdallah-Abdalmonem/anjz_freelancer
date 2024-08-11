import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "sender" field.
  DocumentReference? _sender;
  DocumentReference? get sender => _sender;
  bool hasSender() => _sender != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "seen" field.
  bool? _seen;
  bool get seen => _seen ?? false;
  bool hasSeen() => _seen != null;

  // "refusReason" field.
  String? _refusReason;
  String get refusReason => _refusReason ?? '';
  bool hasRefusReason() => _refusReason != null;

  // "technical" field.
  DocumentReference? _technical;
  DocumentReference? get technical => _technical;
  bool hasTechnical() => _technical != null;

  // "offerRef" field.
  DocumentReference? _offerRef;
  DocumentReference? get offerRef => _offerRef;
  bool hasOfferRef() => _offerRef != null;

  // "reqRef" field.
  DocumentReference? _reqRef;
  DocumentReference? get reqRef => _reqRef;
  bool hasReqRef() => _reqRef != null;

  void _initializeFields() {
    _time = snapshotData['time'] as DateTime?;
    _type = snapshotData['type'] as String?;
    _sender = snapshotData['sender'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
    _seen = snapshotData['seen'] as bool?;
    _refusReason = snapshotData['refusReason'] as String?;
    _technical = snapshotData['technical'] as DocumentReference?;
    _offerRef = snapshotData['offerRef'] as DocumentReference?;
    _reqRef = snapshotData['reqRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  DateTime? time,
  String? type,
  DocumentReference? sender,
  DocumentReference? user,
  bool? seen,
  String? refusReason,
  DocumentReference? technical,
  DocumentReference? offerRef,
  DocumentReference? reqRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'type': type,
      'sender': sender,
      'user': user,
      'seen': seen,
      'refusReason': refusReason,
      'technical': technical,
      'offerRef': offerRef,
      'reqRef': reqRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.time == e2?.time &&
        e1?.type == e2?.type &&
        e1?.sender == e2?.sender &&
        e1?.user == e2?.user &&
        e1?.seen == e2?.seen &&
        e1?.refusReason == e2?.refusReason &&
        e1?.technical == e2?.technical &&
        e1?.offerRef == e2?.offerRef &&
        e1?.reqRef == e2?.reqRef;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash([
        e?.time,
        e?.type,
        e?.sender,
        e?.user,
        e?.seen,
        e?.refusReason,
        e?.technical,
        e?.offerRef,
        e?.reqRef
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
