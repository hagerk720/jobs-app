import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: LocalDataSource)
class LocalDataSource {
  SharedPreferences sharedPreferences;
  LocalDataSource(this.sharedPreferences);

  Future<bool> saveToken(String token) async {
    return sharedPreferences.setString('token', token);
  }

  Future<String?> getToken() async {
    return sharedPreferences.getString('token');
  }

  Future<void> deleteToken() async {
    sharedPreferences.remove('token');

  }
  Future<bool> saveJobId(int jobId) async {
    return sharedPreferences.setInt('jobID', jobId);
  }
  Future<bool> saveUserId(int userId) async {
    return sharedPreferences.setInt('userId', userId);
  }
  Future<int?> getUserId() async {
    return sharedPreferences.getInt('userId');
  }
  Future<int?> getJobId() async {
    return sharedPreferences.getInt('jobID');
  }

}
