// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repository/places_repository.dart' as _i3;
import '../flavor/flavor.dart' as _i4;
import '../flavor/flavor_dev.dart' as _i5;
import '../flavor/flavor_prod.dart' as _i6;
import '../flavor/flavor_qa.dart' as _i7;
import '../flavor/flavor_uat.dart' as _i8;

const String _dev = 'dev';
const String _prod = 'prod';
const String _qa = 'qa';
const String _uat = 'uat';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ChatRepository>(() => _i3.ChatRepository());
  gh.factory<_i4.Flavor>(() => _i5.FlavorDev(), registerFor: {_dev});
  gh.factory<_i4.Flavor>(() => _i6.FlavorProd(), registerFor: {_prod});
  gh.factory<_i4.Flavor>(() => _i7.FlavorQa(), registerFor: {_qa});
  gh.factory<_i4.Flavor>(() => _i8.FlavorUat(), registerFor: {_uat});
  return get;
}
