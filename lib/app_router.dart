import 'package:characters_app/constants/strings.dart';
import 'package:characters_app/presentation/screens/character_details.dart';
import 'package:characters_app/presentation/screens/characters_screen.dart';
import 'package:flutter/material.dart';

class AppRouter{
  Route? generateRoute(RouteSettings settings)
  {
    switch (settings.name) {
      case allCharactersRoute:
        return MaterialPageRoute(builder: (_)=> CharactersScreen());
      case characterDetails:
        return MaterialPageRoute(builder: (_)=> CharaterDetailsScreen());
    }
  }
}