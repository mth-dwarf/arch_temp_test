import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  late final SharedPreferences _sharedPrefs;

  Future<void> init() async {
    _sharedPrefs = await SharedPreferences.getInstance();
  }

  String get example => _sharedPrefs.getString(_keyExample) ?? "";

  Future<void> setExample(String value) async {
    await _sharedPrefs.setString(_keyExample, value);
  }

  bool get isLoggedIn => _sharedPrefs.getBool(_keyIsLoggedIn) ?? false;

  Future<void> setIsLoggedIn(bool value) async {
    await _sharedPrefs.setBool(_keyIsLoggedIn, value);
  }

  bool get onboardingHasSeenNotificationsRationale =>
      _sharedPrefs.getBool(_keyHasSeenOnboardingPushNotifications) ?? false;

  Future<void> setHasSeenNotificationsRationale() async {
    await _sharedPrefs.setBool(_keyHasSeenOnboardingPushNotifications, true);
  }

  bool get onboardingHasSeenUsageTrackingRationale =>
      _sharedPrefs.getBool(_keyHasSeenOnboardingUsageTracking) ?? false;

  Future<void> setHasSeenUsageTrackingRationale() async {
    await _sharedPrefs.setBool(_keyHasSeenOnboardingUsageTracking, true);
  }

  Future<void> clear() async {
    await _sharedPrefs.clear();
  }

  static const _keyExample = "_keyExample";
  static const _keyIsLoggedIn = "_keyIsLoggedIn";
  static const _keyHasSeenOnboardingPushNotifications = "_keyHasSeenOnboardingPushNotifications";
  static const _keyHasSeenOnboardingUsageTracking = "_keyHasSeenOnboardingUsageTracking";
}
