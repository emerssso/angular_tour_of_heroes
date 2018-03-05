import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_app/src/hero_service.dart';

import 'src/hero.dart';
import 'src/hero_detail_component.dart';

@Component(
  selector: 'my-app',
  directives: const [CORE_DIRECTIVES, HeroDetailComponent],
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.css'],
  providers: const [HeroService],
)
class AppComponent implements OnInit {
  final title = 'Tour of Heroes';

  List<Hero> heroes;
  Hero selectedHero;

  final HeroService _heroService;

  AppComponent(this._heroService);

  Future getHeroes() async {
    heroes = await _heroService.getHeroes();
  }

  void ngOnInit() => getHeroes();

  void onSelect(Hero hero) => selectedHero = hero;
}
