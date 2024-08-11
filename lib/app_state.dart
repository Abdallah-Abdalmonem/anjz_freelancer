import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _AppColor =
          _colorFromIntValue(await secureStorage.getInt('ff_AppColor')) ??
              _AppColor;
    });
    await _safeInitAsync(() async {
      _freelancer = await secureStorage.getBool('ff_freelancer') ?? _freelancer;
    });
    await _safeInitAsync(() async {
      _screenName =
          await secureStorage.getString('ff_screenName') ?? _screenName;
    });
    await _safeInitAsync(() async {
      _TechnicinDistance =
          await secureStorage.getDouble('ff_TechnicinDistance') ??
              _TechnicinDistance;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  Color _AppColor = Color(4286262735);
  Color get AppColor => _AppColor;
  set AppColor(Color value) {
    _AppColor = value;
    secureStorage.setInt('ff_AppColor', value.value);
  }

  void deleteAppColor() {
    secureStorage.delete(key: 'ff_AppColor');
  }

  bool _freelancer = false;
  bool get freelancer => _freelancer;
  set freelancer(bool value) {
    _freelancer = value;
    secureStorage.setBool('ff_freelancer', value);
  }

  void deleteFreelancer() {
    secureStorage.delete(key: 'ff_freelancer');
  }

  String _screenName = '';
  String get screenName => _screenName;
  set screenName(String value) {
    _screenName = value;
    secureStorage.setString('ff_screenName', value);
  }

  void deleteScreenName() {
    secureStorage.delete(key: 'ff_screenName');
  }

  double _TechnicinDistance = 0.0;
  double get TechnicinDistance => _TechnicinDistance;
  set TechnicinDistance(double value) {
    _TechnicinDistance = value;
    secureStorage.setDouble('ff_TechnicinDistance', value);
  }

  void deleteTechnicinDistance() {
    secureStorage.delete(key: 'ff_TechnicinDistance');
  }

  final _userDocQueryManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);

  final _allCategoryManager = StreamRequestManager<List<CategoryRecord>>();
  Stream<List<CategoryRecord>> allCategory({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<CategoryRecord>> Function() requestFn,
  }) =>
      _allCategoryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAllCategoryCache() => _allCategoryManager.clear();
  void clearAllCategoryCacheKey(String? uniqueKey) =>
      _allCategoryManager.clearRequest(uniqueKey);

  final _chatManager = StreamRequestManager<List<ChatMessagesRecord>>();
  Stream<List<ChatMessagesRecord>> chat({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ChatMessagesRecord>> Function() requestFn,
  }) =>
      _chatManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearChatCache() => _chatManager.clear();
  void clearChatCacheKey(String? uniqueKey) =>
      _chatManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
