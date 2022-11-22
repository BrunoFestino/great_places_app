import 'package:flutter/material.dart';
import 'package:great_places_app/pages/home_page/home_screen.dart';
import 'package:great_places_app/pages/places_list_page/places_list_screen.dart';
import 'package:great_places_app/provider/great_places_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlacesProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData().copyWith(
          colorScheme: ThemeData()
              .colorScheme
              .copyWith(secondary: Colors.amber, primary: Colors.indigo),
        ),
        home: const PlacesListScreen(),
      ),
    );
  }
}
