import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_app/src/hero_service.dart';

import 'hero.dart';
import 'hero_detail_component.dart';

@Component(
  selector: 'my-heroes',
  directives: const [CORE_DIRECTIVES, HeroDetailComponent],
  templateUrl: 'heroes_component.html',
  styleUrls: const ['heroes_component.css'],
)
class HeroesComponent implements OnInit {
  final title = 'Tour of Heroes';

  List<Hero> heroes;
  Hero selectedHero;

  final HeroService _heroService;

  HeroesComponent(this._heroService);

  Future getHeroes() async {
    heroes = await _heroService.getHeroes();
  }

  void ngOnInit() => getHeroes();

  void onSelect(Hero hero) => selectedHero = hero;
}
