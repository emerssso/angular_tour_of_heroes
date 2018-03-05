import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_app/src/hero.dart';
import 'package:angular_app/src/hero_service.dart';
import 'package:angular_router/angular_router.dart';

@Component(
    selector: 'my-dashboard',
    templateUrl: 'dashboard_component.html',
    directives: const [CORE_DIRECTIVES, ROUTER_DIRECTIVES])
class DashboardComponent implements OnInit {
  List<Hero> heroes;

  final HeroService _heroService;

  DashboardComponent(this._heroService);

  Future<Null> ngOnInit() async {
    heroes = (await _heroService.getHeroes()).skip(1).take(4).toList();
  }
}