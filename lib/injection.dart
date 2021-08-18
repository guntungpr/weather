import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configurationInjection(String env) {
  $initGetIt(getIt, environment: env);
}
