@Tags(const ['aot'])
@TestOn('browser')

import 'package:angular/angular.dart';
import 'package:angular_app/src/heroes_component.dart';
import 'package:angular_test/angular_test.dart';
import 'package:test/test.dart';

@AngularEntrypoint()
void main() {
  final testBed = new NgTestBed<HeroesComponent>();
  NgTestFixture<HeroesComponent> fixture;

  setUp(() async {
    fixture = await testBed.create();
  });

  tearDown(disposeAnyRunningTest);

  test('Default greeting', () {
    expect(fixture.text, 'Hello Angular');
  });

//  test('Greet world', () async {
//    await fixture.update((c) => c.name = 'World');
//    expect(fixture.text, 'Hello World');
//  });

  test('Greet world HTML', () {
    final html = fixture.rootElement.innerHtml;
    expect(html, '<h1>Hello Angular</h1>');
  });
}
