import 'package:bodidatacms/common/prefs/app_prefs.dart';
import 'package:bodidatacms/locator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<GetIt> configureDependencies() => $initGetIt(locator);

@module
abstract class AppModule {
  @preResolve
  Future<AppPref> get appPrefs => AppPref.instance();
}
