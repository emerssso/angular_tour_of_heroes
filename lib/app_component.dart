import 'package:angular/angular.dart';

import 'src/hero.dart';
import 'src/hero_detail_component.dart';
import 'src/mock_heroes.dart';

@Component(
  selector: 'my-app',
  directives: const [CORE_DIRECTIVES, HeroDetailComponent],
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.css'],
)
class AppComponent {
  final title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;

  Hero selectedHero;

  void onSelect(Hero hero) => selectedHero = hero;
}
