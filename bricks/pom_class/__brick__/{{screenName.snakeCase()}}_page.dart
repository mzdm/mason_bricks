import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// TODO: Implement Page Objects
/// * Corresponding screen: [{{screenName}}Screen]
class {{screenName}}Page {
  {{screenName}}Page(this.tester);

  final WidgetTester tester;

  /// Page finders
  final Finder somethingOnPage = find.byKey(const Key('{{screenName.camelCase()}}Page_widget'));
  {{#hasBackButton}}final Finder backBtn = find.byType(BackButton);{{/hasBackButton}}
  {{#hasButton}}final Finder someBtnOnPage = find.byKey(const Key('{{screenName.camelCase()}}Page_button_actionName'));{{/hasButton}}
  {{#hasTextField}}final Finder someTextFieldOnPage = find.byKey(const Key('{{screenName.camelCase()}}Page_textField_email'));{{/hasTextField}}

  /// Page methods
  {{#hasBackButton}}Future<void> clickBackButton() async {
    {{#addLogs}}debugPrint('$runtimeType.clickBackButton');{{/addLogs}}
    await tester.tap(someBtnOnPage);
    await tester.pumpAndSettle();
  }{{/hasBackButton}}

  {{#hasButton}}Future<void> clickSomeButton() async {
    {{#addLogs}}debugPrint('$runtimeType.clickSomeButton');{{/addLogs}}
    await tester.tap(someBtnOnPage);
    await tester.pumpAndSettle();
  }{{/hasButton}}

  {{#hasTextField}}Future<void> insertEmail(String email) async {
    {{#addLogs}}debugPrint('$runtimeType: Insert email: "$nickname"');{{/addLogs}}
    await tester.enterText(someTextFieldOnPage, email);
    await tester.pumpAndSettle();
  }{{/hasTextField}}

  Future<void> verifyScreenIsShown() async {
    {{#addLogs}}debugPrint('$runtimeType.verifyScreenIsShown');{{/addLogs}}
    expect(find.byType({{screenName}}Screen), findsOneWidget);
  }
}
