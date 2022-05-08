import 'package:injectable/injectable.dart';

import 'flavor.dart';

@Injectable(as: Flavor, env: ['uat'])
class FlavorUat implements Flavor {
  @override
  get baseUrl => 'https://bobilguidenapi-uat.eu-north-1.elasticbeanstalk.com/';
  @override
  get suffix => '_uat';
}
