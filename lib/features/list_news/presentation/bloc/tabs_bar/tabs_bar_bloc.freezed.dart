// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tabs_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabsBarState {
  bool get isHeadLines => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabsBarStateCopyWith<TabsBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabsBarStateCopyWith<$Res> {
  factory $TabsBarStateCopyWith(
          TabsBarState value, $Res Function(TabsBarState) then) =
      _$TabsBarStateCopyWithImpl<$Res>;
  $Res call({bool isHeadLines});
}

/// @nodoc
class _$TabsBarStateCopyWithImpl<$Res> implements $TabsBarStateCopyWith<$Res> {
  _$TabsBarStateCopyWithImpl(this._value, this._then);

  final TabsBarState _value;
  // ignore: unused_field
  final $Res Function(TabsBarState) _then;

  @override
  $Res call({
    Object? isHeadLines = freezed,
  }) {
    return _then(_value.copyWith(
      isHeadLines: isHeadLines == freezed
          ? _value.isHeadLines
          : isHeadLines // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TabsBarStateCopyWith<$Res>
    implements $TabsBarStateCopyWith<$Res> {
  factory _$$_TabsBarStateCopyWith(
          _$_TabsBarState value, $Res Function(_$_TabsBarState) then) =
      __$$_TabsBarStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isHeadLines});
}

/// @nodoc
class __$$_TabsBarStateCopyWithImpl<$Res>
    extends _$TabsBarStateCopyWithImpl<$Res>
    implements _$$_TabsBarStateCopyWith<$Res> {
  __$$_TabsBarStateCopyWithImpl(
      _$_TabsBarState _value, $Res Function(_$_TabsBarState) _then)
      : super(_value, (v) => _then(v as _$_TabsBarState));

  @override
  _$_TabsBarState get _value => super._value as _$_TabsBarState;

  @override
  $Res call({
    Object? isHeadLines = freezed,
  }) {
    return _then(_$_TabsBarState(
      isHeadLines: isHeadLines == freezed
          ? _value.isHeadLines
          : isHeadLines // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TabsBarState implements _TabsBarState {
  const _$_TabsBarState({required this.isHeadLines});

  @override
  final bool isHeadLines;

  @override
  String toString() {
    return 'TabsBarState(isHeadLines: $isHeadLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabsBarState &&
            const DeepCollectionEquality()
                .equals(other.isHeadLines, isHeadLines));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isHeadLines));

  @JsonKey(ignore: true)
  @override
  _$$_TabsBarStateCopyWith<_$_TabsBarState> get copyWith =>
      __$$_TabsBarStateCopyWithImpl<_$_TabsBarState>(this, _$identity);
}

abstract class _TabsBarState implements TabsBarState {
  const factory _TabsBarState({required final bool isHeadLines}) =
      _$_TabsBarState;

  @override
  bool get isHeadLines => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TabsBarStateCopyWith<_$_TabsBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
