import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_app/src/hero_service.dart';
import 'package:angular_router/angular_router.dart';

import 'hero.dart';
import 'hero_detail_component.dart';

@Component(
    selector: 'my-heroes',
    directives: const [CORE_DIRECTIVES, HeroDetailComponent],
    templateUrl: 'heroes_component.html',
    styleUrls: const ['heroes_component.css'],
    pipes: const [COMMON_PIPES])
class HeroesComponent implements OnInit {
  final title = 'Tour of Heroes';

  List<Hero> heroes;
  Hero selectedHero;

  final HeroService _heroService;
  final Router _router;

  HeroesComponent(this._heroService, this._router);

  Future getHeroes() async {
    heroes = await _heroService.getHeroes();
  }

  void ngOnInit() => getHeroes();

  void onSelect(Hero hero) => selectedHero = hero;

  Future<Null> gotoDetail() =>
      _router.navigate([
        'HeroDetail',
        {'id': selectedHero.id.toString()}
      ]);
}
