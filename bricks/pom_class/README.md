# pom_class

A template for quickly generating consistent [Page Object Model][1] (POM) classes that are used in integration tests.

## Usage 🚀

```sh
mason make pom_class --screenName BookDetail
```

## Variables ✨

| Variable | Description                 | Default   | Type     |
| -------- | --------------------------- | --------- | -------- |
| `screenName`   | Screen class name (e.g. for "LoginScreen" type "Login") | `login` | `string` |
| `hasButton`   | Whether the screen has a button | `true` | `boolean` |
| `hasBackButton`   | Whether the screen has a BackButton | `false` | `boolean` |
| `hasTextField`   | Whether the screen has a TextField | `false` | `boolean` |
| `addLogs`   | Whether to add debugPrint logs to action methods | `true` | `boolean` |

## Output 📦

```sh
├── book_detail_page.dart
```

## Usage in integration tests 📦
```dart
testWidgets('Example', (WidgetTester tester) async {
    ...
    final bookDetailPage = BookDetailPage(tester);
    bookDetailPage.verifyScreenIsShown();
    await bookDetailPage.clickSomeButton();
});
```


[1]: https://www.softwaretestinghelp.com/page-object-model-in-selenium-without-page-factory/