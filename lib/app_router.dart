import 'dart:js';

import 'package:characters_app/business_logic/cubit/characters_cubit.dart';
import 'package:characters_app/constants/strings.dart';
import 'package:characters_app/data/repository/characters_repository.dart';
import 'package:characters_app/data/web_serveces/character_web_serveces.dart';
import 'package:characters_app/presentation/screens/character_details.dart';
import 'package:characters_app/presentation/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter{

  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter()
  {
    charactersRepository = CharactersRepository(CharactersWebServeces());
    charactersCubit = CharactersCubit(charactersRepository);
  }


  Route? generateRoute(RouteSettings settings)
  {
    switch (settings.name) {
      case allCharactersRoute:
        return MaterialPageRoute(builder: (_)=> 
        BlocProvider(
          create: (context) => charactersCubit,
          child: CharactersScreen())
        );
      case characterDetails:
        return MaterialPageRoute(builder: (_)=> CharaterDetailsScreen());
    }
  }
}