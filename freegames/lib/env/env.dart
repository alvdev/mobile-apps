import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'FREEGAMES_KEY', obfuscate: true)
  static final String freegamesApiKey = _Env.freegamesApiKey;
}
