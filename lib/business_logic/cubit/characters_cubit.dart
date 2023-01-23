import 'package:bloc/bloc.dart';
import 'package:characters_app/data/model/characters_model.dart';
import 'package:characters_app/data/repository/characters_repository.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  final CharactersRepository charactersRepository;

  late List <CharactersModel> characters ;

  List<CharactersModel> getAllCharacters()
  {
    charactersRepository.getAllCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters = characters;
    });
    return characters;
  }
}
