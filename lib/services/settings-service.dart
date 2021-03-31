import 'package:shared_preferences/shared_preferences.dart';
import 'package:tidy_my_gallery/models/settings.dart';
import 'package:tidy_my_gallery/models/shared-preference-keys.dart';

class SettingsService {
  SharedPreferences prefs;
  SettingsService() {}

  static Future<SettingsService> create() async {
    var service = SettingsService();
    service.prefs = await SharedPreferences.getInstance();
    return Future.value(service);
  }

  Settings getSettings() {
    if (prefs.getKeys().isEmpty == true) {
      return Settings();
    }
    return Settings(
        tinyUpFolder: prefs.getString(SharedPrefKeys.TINY_UP_FOLDER),
        loveFolder: prefs.getString(SharedPrefKeys.LOVE_FOLDER),
        likeFolder: prefs.getString(SharedPrefKeys.LIKE_FOLDER),
        deleteFolder: prefs.getString(SharedPrefKeys.DELETE_FOLDER),
        loveImagesMoveToFolder: prefs.getBool(SharedPrefKeys.LOVE_IMAGES_MOVE_TO_FOLDER),
        likeImagesMoveToFolder: prefs.getBool(SharedPrefKeys.LIKE_IMAGES_MOVE_TO_FOLDER),
        hardDelete: prefs.getBool(SharedPrefKeys.HARD_DELETE),
    );
  }

  void updateSettings(Settings settings) {
    prefs.setString(SharedPrefKeys.TINY_UP_FOLDER, settings.tinyUpFolder);
    prefs.setString(SharedPrefKeys.LOVE_FOLDER, settings.loveFolder);
    prefs.setString(SharedPrefKeys.LIKE_FOLDER, settings.likeFolder);
    prefs.setString(SharedPrefKeys.DELETE_FOLDER, settings.deleteFolder);
    prefs.setBool(SharedPrefKeys.LOVE_IMAGES_MOVE_TO_FOLDER, settings.loveImagesMoveToFolder);
    prefs.setBool(SharedPrefKeys.LIKE_IMAGES_MOVE_TO_FOLDER, settings.likeImagesMoveToFolder);
    prefs.setBool(SharedPrefKeys.HARD_DELETE, settings.hardDelete);
  }

}