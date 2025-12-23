import 'dart:ui';

import 'package:flutter/cupertino.dart';

class HelperUtils {
  static final HelperUtils _instance = HelperUtils._internal();

  // Private constructor
  HelperUtils._internal();

  // Public getter for accessing the instance
  static HelperUtils get instance => _instance;

  String parseUrlId(String url) {
    /// there is value like this url "https://pokeapi.co/api/v2/pokemon-species/4/"
    /// i want to get the id "4" from this url
    final segments = url.split('/');
    if (segments.length >= 2) {
      return segments[segments.length - 2];
    }
    return "0";
  }

}