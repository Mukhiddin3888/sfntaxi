
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sfntaxi/domain/core/token.dart';



class DBService {
  static const _dbName = 'localDB';
  static const _accessToken = 'access_token';
  static const _refreshToken = 'refresh_token';
  static const _themeMode = 'theme_mode';

  static const _dbBranchId = 'branchId';
  static const _dbLatidu = 'latidu';
  static const _dbLongtidu = 'longtidu';
  static const _dbPhoneNumber = 'phoneNumber';
  static const _productAddedLastDate = 'productAddedLastDate';


  static Box? _box;
  static Box? _productBox;

  DBService._();

  static Future<DBService> get create async {
    _box ??= await Hive.openBox(_dbName);

    return DBService._();
  }

  /// Token
  Future<void> setToken(Token token) async {
    await _box?.put(_accessToken, token.accessToken);
    await _box?.put(_refreshToken, token.refreshToken);
  }

  Token get token {
    final accessToken = _box?.get(_accessToken);
    final refreshToken = _box?.get(_refreshToken);
    return Token(accessToken: accessToken, refreshToken: refreshToken);
  }

  /// phone number
  Future<void> setPhoneNumber(String phone) async {
    await _box?.put(_dbPhoneNumber, phone);
  }

  String get phoneNumber {
    final phone = _box?.get(_dbPhoneNumber);
    return phone;
  }

  /// locations info
  Future<void> setUserLocations(int branchId, String lat, String long) async {
    await _box?.put(_dbBranchId, branchId);
    await _box?.put(_dbLatidu, lat);
    await _box?.put(_dbLongtidu, long);
  }

  UserInfo get getUserLoc {
    final branchId = _box?.get(_dbBranchId);
    final lat = _box?.get(_dbLatidu);
    final long = _box?.get(_dbLongtidu);
    return UserInfo(branchId: branchId, lat: lat, long: long);
  }


  /// Theme
  Future<void> setThemeMode(String? mode) async {
    await _box?.put(_themeMode, mode);
  }

  String? get getThemeMode {
    String? getName = _box?.get(_themeMode);
    return getName;
  }

  Future<void> signOut() async => await _box?.clear();



  Future<void> clearProductsBox() async {
    _box?.put(_productAddedLastDate, DateTime.now().toIso8601String());
    await _productBox?.clear();
  }
}

class UserInfo {
  final int branchId;
  final String lat;
  final String long;

  const UserInfo({
    required this.branchId,
    required this.lat,
    required this.long,
  });

  @override
  String toString() {
    return 'UserInfo{branchId: $branchId, lat: $lat, long: $long}';
  }
}

