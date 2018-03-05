import 'package:angular/angular.dart';
import 'package:angular_app/src/dashboard_component.dart';
import 'package:angular_app/src/hero_detail_component.dart';
import 'package:angular_app/src/hero_service.dart';
import 'package:angular_app/src/heroes_component.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'my-app',
    template: '''
    <h1>{{title}}</h1>
    <nav>
      <a [routerLink]="['Dashboard']">Dashboard</a>
      <a [routerLink]="['Heroes']">Heroes</a>
    </nav>
    <router-outlet></router-outlet>
  ''',
    directives: const [ROUTER_DIRECTIVES],
    providers: const [HeroService]
)
@RouteConfig(const [
  const Route(
      path: '/detail/:id',
      name: 'HeroDetail',
      component: HeroDetailComponent
  ),
  const Route(
      path: '/heroes',
      name: 'Heroes',
      component: HeroesComponent
  ),
  const Route(
      path: '/dashboard',
      name: 'Dashboard',
      component: DashboardComponent
  ),
  const Redirect(path: '/', redirectTo: const ['Dashboard'])
])
class AppComponent {
  final title = 'Tour of Heroes';
}
