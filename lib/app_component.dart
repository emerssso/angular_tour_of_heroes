import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
  selector: 'my-app',
  directives: const [formDirectives],
  template: '''
    <h1>{{title}}</h1>
    <h2>{{hero.name}} details!</h2>
    <div><label>id: </label>{{hero.id}}</div>
    <div>
      <label>name: </label>
      <input [(ngModel)]="hero.name" placeholder="name">
    </div>
  ''',
)
class AppComponent {
  final title = 'Tour of Heroes';
  var hero = new Hero(1, 'Windstorm');
}

class Hero {
  final int id;
  String name;

  Hero(this.id, this.name);
}
