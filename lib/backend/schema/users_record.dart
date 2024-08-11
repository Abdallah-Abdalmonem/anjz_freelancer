import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "technical" field.
  bool? _technical;
  bool get technical => _technical ?? false;
  bool hasTechnical() => _technical != null;

  // "technicalAccountRef" field.
  DocumentReference? _technicalAccountRef;
  DocumentReference? get technicalAccountRef => _technicalAccountRef;
  bool hasTechnicalAccountRef() => _technicalAccountRef != null;

  // "lastActivDate" field.
  String? _lastActivDate;
  String get lastActivDate => _lastActivDate ?? '';
  bool hasLastActivDate() => _lastActivDate != null;

  // "technicalReq" field.
  DocumentReference? _technicalReq;
  DocumentReference? get technicalReq => _technicalReq;
  bool hasTechnicalReq() => _technicalReq != null;

  // "reviewStatus" field.
  String? _reviewStatus;
  String get reviewStatus => _reviewStatus ?? '';
  bool hasReviewStatus() => _reviewStatus != null;

  // "refuseReason" field.
  String? _refuseReason;
  String get refuseReason => _refuseReason ?? '';
  bool hasRefuseReason() => _refuseReason != null;

  // "customerSupport" field.
  bool? _customerSupport;
  bool get customerSupport => _customerSupport ?? false;
  bool hasCustomerSupport() => _customerSupport != null;

  // "customerSupportChatRef" field.
  DocumentReference? _customerSupportChatRef;
  DocumentReference? get customerSupportChatRef => _customerSupportChatRef;
  bool hasCustomerSupportChatRef() => _customerSupportChatRef != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  // "DEVELOPER" field.
  bool? _developer;
  bool get developer => _developer ?? false;
  bool hasDeveloper() => _developer != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
    _technical = snapshotData['technical'] as bool?;
    _technicalAccountRef =
        snapshotData['technicalAccountRef'] as DocumentReference?;
    _lastActivDate = snapshotData['lastActivDate'] as String?;
    _technicalReq = snapshotData['technicalReq'] as DocumentReference?;
    _reviewStatus = snapshotData['reviewStatus'] as String?;
    _refuseReason = snapshotData['refuseReason'] as String?;
    _customerSupport = snapshotData['customerSupport'] as bool?;
    _customerSupportChatRef =
        snapshotData['customerSupportChatRef'] as DocumentReference?;
    _admin = snapshotData['admin'] as bool?;
    _developer = snapshotData['DEVELOPER'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
  bool? technical,
  DocumentReference? technicalAccountRef,
  String? lastActivDate,
  DocumentReference? technicalReq,
  String? reviewStatus,
  String? refuseReason,
  bool? customerSupport,
  DocumentReference? customerSupportChatRef,
  bool? admin,
  bool? developer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
      'technical': technical,
      'technicalAccountRef': technicalAccountRef,
      'lastActivDate': lastActivDate,
      'technicalReq': technicalReq,
      'reviewStatus': reviewStatus,
      'refuseReason': refuseReason,
      'customerSupport': customerSupport,
      'customerSupportChatRef': customerSupportChatRef,
      'admin': admin,
      'DEVELOPER': developer,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title &&
        e1?.technical == e2?.technical &&
        e1?.technicalAccountRef == e2?.technicalAccountRef &&
        e1?.lastActivDate == e2?.lastActivDate &&
        e1?.technicalReq == e2?.technicalReq &&
        e1?.reviewStatus == e2?.reviewStatus &&
        e1?.refuseReason == e2?.refuseReason &&
        e1?.customerSupport == e2?.customerSupport &&
        e1?.customerSupportChatRef == e2?.customerSupportChatRef &&
        e1?.admin == e2?.admin &&
        e1?.developer == e2?.developer;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title,
        e?.technical,
        e?.technicalAccountRef,
        e?.lastActivDate,
        e?.technicalReq,
        e?.reviewStatus,
        e?.refuseReason,
        e?.customerSupport,
        e?.customerSupportChatRef,
        e?.admin,
        e?.developer
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
