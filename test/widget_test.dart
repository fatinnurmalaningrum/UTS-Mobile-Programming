import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_uts/main.dart'; // Replace with the actual file path of your profile_screen.dart

void main() {
  testWidgets('Profile screen UI test', (WidgetTester tester) async {
    // Build our ProfileScreen widget and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: ProfileScreen()));

    // Verify that the profile screen has an app bar with the title 'Profile'.
    expect(find.text('Profile'), findsOneWidget);

    // Verify that the profile screen displays the correct name.
    expect(find.text('John Doe'), findsOneWidget);

    // Verify that the profile screen displays the correct job title.
    expect(find.text('Software Developer'), findsOneWidget);

    // Verify that the profile screen displays the correct email.
    expect(find.text('john.doe@example.com'), findsOneWidget);
  });
}
