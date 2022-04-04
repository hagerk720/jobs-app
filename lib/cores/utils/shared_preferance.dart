import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences {
  static SharedPreferences? _preferences;
  static const keyToken = "token";
  static const keyUserId = "user id";

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setToken(String token) async =>
      await _preferences!.setString(keyToken, token);

  static String? getToken() => _preferences!.getString(keyToken);

  static Future setUserId(int? userId) async =>
      await _preferences!.setInt(keyUserId, userId!);

  static int? getUserId() => _preferences!.getInt(keyUserId);

  static Future setJobId(int jobId) async =>
      await _preferences!.setInt("jobId", jobId);

  static int? getJobId() => _preferences!.getInt("jobId");
}
