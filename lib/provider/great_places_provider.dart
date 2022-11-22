import 'package:flutter/material.dart';

import '../models/place_model.dart';

class GreatPlacesProvider extends ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }
}
