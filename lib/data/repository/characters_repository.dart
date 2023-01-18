import 'package:characters_app/data/model/characters_model.dart';
import 'package:characters_app/data/web_serveces/character_web_serveces.dart';

class CharactersRepository
{
  final CharactersWebServeces charactersWebServeces;

  CharactersRepository(this.charactersWebServeces);

  Future<List<dynamic>> getAllCharacters()async
  {
    final characters = await charactersWebServeces.getAllCharacters();
    return characters.map((character) => CharactersModel.fromJson(character)).toList();
  }
}