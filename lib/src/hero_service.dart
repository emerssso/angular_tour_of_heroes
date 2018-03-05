import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_app/src/hero.dart';
import 'package:angular_app/src/mock_heroes.dart';

@Injectable()
class HeroService {
  Future<List<Hero>> getHeroes() async => mockHeroes;
}
