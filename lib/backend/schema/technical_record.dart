import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TechnicalRecord extends FirestoreRecord {
  TechnicalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "categories" field.
  List<DocumentReference>? _categories;
  List<DocumentReference> get categories => _categories ?? const [];
  bool hasCategories() => _categories != null;

  // "Cityofresidence" field.
  String? _cityofresidence;
  String get cityofresidence => _cityofresidence ?? '';
  bool hasCityofresidence() => _cityofresidence != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "acceptable" field.
  bool? _acceptable;
  bool get acceptable => _acceptable ?? false;
  bool hasAcceptable() => _acceptable != null;

  // "refused" field.
  bool? _refused;
  bool get refused => _refused ?? false;
  bool hasRefused() => _refused != null;

  // "editedToReview" field.
  bool? _editedToReview;
  bool get editedToReview => _editedToReview ?? false;
  bool hasEditedToReview() => _editedToReview != null;

  // "imageList" field.
  List<String>? _imageList;
  List<String> get imageList => _imageList ?? const [];
  bool hasImageList() => _imageList != null;

  // "nationality" field.
  String? _nationality;
  String get nationality => _nationality ?? '';
  bool hasNationality() => _nationality != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "PhonNo" field.
  String? _phonNo;
  String get phonNo => _phonNo ?? '';
  bool hasPhonNo() => _phonNo != null;

  // "refusedOrderList" field.
  List<DocumentReference>? _refusedOrderList;
  List<DocumentReference> get refusedOrderList => _refusedOrderList ?? const [];
  bool hasRefusedOrderList() => _refusedOrderList != null;

  // "refusdOrdersNo" field.
  List<int>? _refusdOrdersNo;
  List<int> get refusdOrdersNo => _refusdOrdersNo ?? const [];
  bool hasRefusdOrdersNo() => _refusdOrdersNo != null;

  // "rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  // "readyToWork" field.
  bool? _readyToWork;
  bool get readyToWork => _readyToWork ?? false;
  bool hasReadyToWork() => _readyToWork != null;

  // "customerChatSupport" field.
  DocumentReference? _customerChatSupport;
  DocumentReference? get customerChatSupport => _customerChatSupport;
  bool hasCustomerChatSupport() => _customerChatSupport != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _categories = getDataList(snapshotData['categories']);
    _cityofresidence = snapshotData['Cityofresidence'] as String?;
    _bio = snapshotData['bio'] as String?;
    _acceptable = snapshotData['acceptable'] as bool?;
    _refused = snapshotData['refused'] as bool?;
    _editedToReview = snapshotData['editedToReview'] as bool?;
    _imageList = getDataList(snapshotData['imageList']);
    _nationality = snapshotData['nationality'] as String?;
    _name = snapshotData['name'] as String?;
    _phonNo = snapshotData['PhonNo'] as String?;
    _refusedOrderList = getDataList(snapshotData['refusedOrderList']);
    _refusdOrdersNo = getDataList(snapshotData['refusdOrdersNo']);
    _rate = castToType<double>(snapshotData['rate']);
    _readyToWork = snapshotData['readyToWork'] as bool?;
    _customerChatSupport =
        snapshotData['customerChatSupport'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Technical');

  static Stream<TechnicalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TechnicalRecord.fromSnapshot(s));

  static Future<TechnicalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TechnicalRecord.fromSnapshot(s));

  static TechnicalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TechnicalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TechnicalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TechnicalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TechnicalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TechnicalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTechnicalRecordData({
  DocumentReference? userRef,
  DateTime? time,
  String? cityofresidence,
  String? bio,
  bool? acceptable,
  bool? refused,
  bool? editedToReview,
  String? nationality,
  String? name,
  String? phonNo,
  double? rate,
  bool? readyToWork,
  DocumentReference? customerChatSupport,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'time': time,
      'Cityofresidence': cityofresidence,
      'bio': bio,
      'acceptable': acceptable,
      'refused': refused,
      'editedToReview': editedToReview,
      'nationality': nationality,
      'name': name,
      'PhonNo': phonNo,
      'rate': rate,
      'readyToWork': readyToWork,
      'customerChatSupport': customerChatSupport,
    }.withoutNulls,
  );

  return firestoreData;
}

class TechnicalRecordDocumentEquality implements Equality<TechnicalRecord> {
  const TechnicalRecordDocumentEquality();

  @override
  bool equals(TechnicalRecord? e1, TechnicalRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userRef == e2?.userRef &&
        e1?.time == e2?.time &&
        listEquality.equals(e1?.categories, e2?.categories) &&
        e1?.cityofresidence == e2?.cityofresidence &&
        e1?.bio == e2?.bio &&
        e1?.acceptable == e2?.acceptable &&
        e1?.refused == e2?.refused &&
        e1?.editedToReview == e2?.editedToReview &&
        listEquality.equals(e1?.imageList, e2?.imageList) &&
        e1?.nationality == e2?.nationality &&
        e1?.name == e2?.name &&
        e1?.phonNo == e2?.phonNo &&
        listEquality.equals(e1?.refusedOrderList, e2?.refusedOrderList) &&
        listEquality.equals(e1?.refusdOrdersNo, e2?.refusdOrdersNo) &&
        e1?.rate == e2?.rate &&
        e1?.readyToWork == e2?.readyToWork &&
        e1?.customerChatSupport == e2?.customerChatSupport;
  }

  @override
  int hash(TechnicalRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.time,
        e?.categories,
        e?.cityofresidence,
        e?.bio,
        e?.acceptable,
        e?.refused,
        e?.editedToReview,
        e?.imageList,
        e?.nationality,
        e?.name,
        e?.phonNo,
        e?.refusedOrderList,
        e?.refusdOrdersNo,
        e?.rate,
        e?.readyToWork,
        e?.customerChatSupport
      ]);

  @override
  bool isValidKey(Object? o) => o is TechnicalRecord;
}
