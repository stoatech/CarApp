// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'car_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarListState {
  List<Car> get cars => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarListStateCopyWith<CarListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarListStateCopyWith<$Res> {
  factory $CarListStateCopyWith(
          CarListState value, $Res Function(CarListState) then) =
      _$CarListStateCopyWithImpl<$Res>;
  $Res call({List<Car> cars});
}

/// @nodoc
class _$CarListStateCopyWithImpl<$Res> implements $CarListStateCopyWith<$Res> {
  _$CarListStateCopyWithImpl(this._value, this._then);

  final CarListState _value;
  // ignore: unused_field
  final $Res Function(CarListState) _then;

  @override
  $Res call({
    Object? cars = freezed,
  }) {
    return _then(_value.copyWith(
      cars: cars == freezed
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc
abstract class _$$_CarListStateCopyWith<$Res>
    implements $CarListStateCopyWith<$Res> {
  factory _$$_CarListStateCopyWith(
          _$_CarListState value, $Res Function(_$_CarListState) then) =
      __$$_CarListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Car> cars});
}

/// @nodoc
class __$$_CarListStateCopyWithImpl<$Res>
    extends _$CarListStateCopyWithImpl<$Res>
    implements _$$_CarListStateCopyWith<$Res> {
  __$$_CarListStateCopyWithImpl(
      _$_CarListState _value, $Res Function(_$_CarListState) _then)
      : super(_value, (v) => _then(v as _$_CarListState));

  @override
  _$_CarListState get _value => super._value as _$_CarListState;

  @override
  $Res call({
    Object? cars = freezed,
  }) {
    return _then(_$_CarListState(
      cars: cars == freezed
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc

class _$_CarListState implements _CarListState {
  _$_CarListState({final List<Car> cars = const <Car>[]}) : _cars = cars;

  final List<Car> _cars;
  @override
  @JsonKey()
  List<Car> get cars {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'CarListState(cars: $cars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarListState &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  @JsonKey(ignore: true)
  @override
  _$$_CarListStateCopyWith<_$_CarListState> get copyWith =>
      __$$_CarListStateCopyWithImpl<_$_CarListState>(this, _$identity);
}

abstract class _CarListState implements CarListState {
  factory _CarListState({final List<Car> cars}) = _$_CarListState;

  @override
  List<Car> get cars => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CarListStateCopyWith<_$_CarListState> get copyWith =>
      throw _privateConstructorUsedError;
}
