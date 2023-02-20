// Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:snowrun/injection/injection.config.dart';

// Project imports:

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)

void configureDependencies() => $initGetIt(getIt);
// Future<void> configureDependencies() async {
//   configureCoreModuleDependencies(
//       getIt: getIt,
//       apiModule: ApiModule(
//           baseUrl: dotenv.env['BASE_URL'] ?? "",
//           path: "/api/v1",
//           authToken: "pi"));
//   $initGetIt(getIt);
// }