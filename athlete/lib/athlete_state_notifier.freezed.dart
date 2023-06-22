// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'athlete_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AthleteState {
  String get firstName => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  int get counter => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AthleteStateCopyWith<AthleteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AthleteStateCopyWith<$Res> {
  factory $AthleteStateCopyWith(
          AthleteState value, $Res Function(AthleteState) then) =
      _$AthleteStateCopyWithImpl<$Res>;
  $Res call({String firstName, int age, int counter, String? message});
}

/// @nodoc
class _$AthleteStateCopyWithImpl<$Res> implements $AthleteStateCopyWith<$Res> {
  _$AthleteStateCopyWithImpl(this._value, this._then);

  final AthleteState _value;
  // ignore: unused_field
  final $Res Function(AthleteState) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? age = freezed,
    Object? counter = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AthleteStateCopyWith<$Res>
    implements $AthleteStateCopyWith<$Res> {
  factory _$$_AthleteStateCopyWith(
          _$_AthleteState value, $Res Function(_$_AthleteState) then) =
      __$$_AthleteStateCopyWithImpl<$Res>;
  @override
  $Res call({String firstName, int age, int counter, String? message});
}

/// @nodoc
class __$$_AthleteStateCopyWithImpl<$Res>
    extends _$AthleteStateCopyWithImpl<$Res>
    implements _$$_AthleteStateCopyWith<$Res> {
  __$$_AthleteStateCopyWithImpl(
      _$_AthleteState _value, $Res Function(_$_AthleteState) _then)
      : super(_value, (v) => _then(v as _$_AthleteState));

  @override
  _$_AthleteState get _value => super._value as _$_AthleteState;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? age = freezed,
    Object? counter = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_AthleteState(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AthleteState extends _AthleteState {
  const _$_AthleteState(
      {this.firstName = '', this.age = 0, this.counter = 0, this.message})
      : super._();

  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final int age;
  @override
  @JsonKey()
  final int counter;
  @override
  final String? message;

  @override
  String toString() {
    return 'AthleteState(firstName: $firstName, age: $age, counter: $counter, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AthleteState &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.counter, counter) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(counter),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_AthleteStateCopyWith<_$_AthleteState> get copyWith =>
      __$$_AthleteStateCopyWithImpl<_$_AthleteState>(this, _$identity);
}

abstract class _AthleteState extends AthleteState {
  const factory _AthleteState(
      {final String firstName,
      final int age,
      final int counter,
      final String? message}) = _$_AthleteState;
  const _AthleteState._() : super._();

  @override
  String get firstName;
  @override
  int get age;
  @override
  int get counter;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_AthleteStateCopyWith<_$_AthleteState> get copyWith =>
      throw _privateConstructorUsedError;
}
