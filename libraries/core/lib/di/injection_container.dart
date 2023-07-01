import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../local/shared_pref_helper.dart';

final inject = GetIt.instance;

Future<void> init(String baseUrl) async {
  // Local
  final preferences = await SharedPreferences.getInstance();
  inject.registerLazySingleton(() => preferences);
  inject.registerLazySingleton(() => SharedPrefHelper(preferences: inject()));
}
