import 'package:injectable/injectable.dart';

import 'flavor.dart';

@Injectable(as: Flavor, env: ['dev'])
class FlavorDev implements Flavor {
  @override
  get baseUrl => 'https://bobilguidenapi-dev.eu-north-1.elasticbeanstalk.com/';
  @override
  get suffix => '_dev';
}
