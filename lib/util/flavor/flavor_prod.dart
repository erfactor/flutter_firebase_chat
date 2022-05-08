import 'package:injectable/injectable.dart';

import 'flavor.dart';

@Injectable(as: Flavor, env: ['prod'])
class FlavorProd implements Flavor {
  @override
  get baseUrl => 'https://bobilguidenapi-prod.eu-north-1.elasticbeanstalk.com/';
  @override
  get suffix => '';
}
