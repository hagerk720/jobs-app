import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences {
  static SharedPreferences? _preferences;
  static const _KeyToken = "token";
  static const _KeyUserId = "user id";

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setToken(String token) async =>
      await _preferences!.setString(_KeyToken, token);

  static String? getToken() => _preferences!.getString(_KeyToken);

  static Future setUserId(int? userId) async =>
      await _preferences!.setInt(_KeyUserId, userId!);

  static int? getUserId() => _preferences!.getInt(_KeyUserId);

  static Future setJobId(int jobId) async =>
      await _preferences!.setInt("jobId", jobId);

  static int? getJobId() => _preferences!.getInt("jobId");
}
