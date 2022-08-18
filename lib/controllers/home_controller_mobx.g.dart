// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeControllerMobx on _HomeControllerMobxBase, Store {
  late final _$pokemonsAtom =
      Atom(name: '_HomeControllerMobxBase.pokemons', context: context);

  @override
  ObservableFuture<List<Pokemon>>? get pokemons {
    _$pokemonsAtom.reportRead();
    return super.pokemons;
  }

  @override
  set pokemons(ObservableFuture<List<Pokemon>>? value) {
    _$pokemonsAtom.reportWrite(value, super.pokemons, () {
      super.pokemons = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_HomeControllerMobxBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$getPokemonsAsyncAction =
      AsyncAction('_HomeControllerMobxBase.getPokemons', context: context);

  @override
  Future getPokemons() {
    return _$getPokemonsAsyncAction.run(() => super.getPokemons());
  }

  late final _$changeLoadingAsyncAction =
      AsyncAction('_HomeControllerMobxBase.changeLoading', context: context);

  @override
  Future changeLoading() {
    return _$changeLoadingAsyncAction.run(() => super.changeLoading());
  }

  @override
  String toString() {
    return '''
pokemons: ${pokemons},
loading: ${loading}
    ''';
  }
}
