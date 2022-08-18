// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokemonController on _PokemonControllerBase, Store {
  late final _$padValueAtom =
      Atom(name: '_PokemonControllerBase.padValue', context: context);

  @override
  double get padValue {
    _$padValueAtom.reportRead();
    return super.padValue;
  }

  @override
  set padValue(double value) {
    _$padValueAtom.reportWrite(value, super.padValue, () {
      super.padValue = value;
    });
  }

  late final _$updatePadValueAsyncAction =
      AsyncAction('_PokemonControllerBase.updatePadValue', context: context);

  @override
  Future updatePadValue() {
    return _$updatePadValueAsyncAction.run(() => super.updatePadValue());
  }

  late final _$_PokemonControllerBaseActionController =
      ActionController(name: '_PokemonControllerBase', context: context);

  @override
  dynamic resetPadValue() {
    final _$actionInfo = _$_PokemonControllerBaseActionController.startAction(
        name: '_PokemonControllerBase.resetPadValue');
    try {
      return super.resetPadValue();
    } finally {
      _$_PokemonControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
padValue: ${padValue}
    ''';
  }
}
