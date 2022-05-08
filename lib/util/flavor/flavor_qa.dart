import 'package:injectable/injectable.dart';

import 'flavor.dart';

@Injectable(as: Flavor, env: ['qa'])
class FlavorQa implements Flavor {
  @override
  get baseUrl => 'https://bobilguidenapi-qa.eu-north-1.elasticbeanstalk.com/';
  @override
  get suffix => '_qa';
}
