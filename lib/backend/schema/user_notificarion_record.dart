import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserNotificarionRecord extends FirestoreRecord {
  UserNotificarionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "seen" field.
  bool? _seen;
  bool get seen => _seen ?? false;
  bool hasSeen() => _seen != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "senderRef" field.
  DocumentReference? _senderRef;
  DocumentReference? get senderRef => _senderRef;
  bool hasSenderRef() => _senderRef != null;

  // "refusReson" field.
  String? _refusReson;
  String get refusReson => _refusReson ?? '';
  bool hasRefusReson() => _refusReson != null;

  // "senderName" field.
  String? _senderName;
  String get senderName => _senderName ?? '';
  bool hasSenderName() => _senderName != null;

  // "chatRef" field.
  DocumentReference? _chatRef;
  DocumentReference? get chatRef => _chatRef;
  bool hasChatRef() => _chatRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _ref = snapshotData['ref'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _seen = snapshotData['seen'] as bool?;
    _type = snapshotData['type'] as String?;
    _senderRef = snapshotData['senderRef'] as DocumentReference?;
    _refusReson = snapshotData['refusReson'] as String?;
    _senderName = snapshotData['senderName'] as String?;
    _chatRef = snapshotData['chatRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userNotificarion')
          : FirebaseFirestore.instance.collectionGroup('userNotificarion');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('userNotificarion').doc(id);

  static Stream<UserNotificarionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserNotificarionRecord.fromSnapshot(s));

  static Future<UserNotificarionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserNotificarionRecord.fromSnapshot(s));

  static UserNotificarionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserNotificarionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserNotificarionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserNotificarionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserNotificarionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserNotificarionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserNotificarionRecordData({
  DocumentReference? ref,
  DateTime? time,
  bool? seen,
  String? type,
  DocumentReference? senderRef,
  String? refusReson,
  String? senderName,
  DocumentReference? chatRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ref': ref,
      'time': time,
      'seen': seen,
      'type': type,
      'senderRef': senderRef,
      'refusReson': refusReson,
      'senderName': senderName,
      'chatRef': chatRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserNotificarionRecordDocumentEquality
    implements Equality<UserNotificarionRecord> {
  const UserNotificarionRecordDocumentEquality();

  @override
  bool equals(UserNotificarionRecord? e1, UserNotificarionRecord? e2) {
    return e1?.ref == e2?.ref &&
        e1?.time == e2?.time &&
        e1?.seen == e2?.seen &&
        e1?.type == e2?.type &&
        e1?.senderRef == e2?.senderRef &&
        e1?.refusReson == e2?.refusReson &&
        e1?.senderName == e2?.senderName &&
        e1?.chatRef == e2?.chatRef;
  }

  @override
  int hash(UserNotificarionRecord? e) => const ListEquality().hash([
        e?.ref,
        e?.time,
        e?.seen,
        e?.type,
        e?.senderRef,
        e?.refusReson,
        e?.senderName,
        e?.chatRef
      ]);

  @override
  bool isValidKey(Object? o) => o is UserNotificarionRecord;
}
