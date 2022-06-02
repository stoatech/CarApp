// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'car.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Car _$CarFromJson(Map<String, dynamic> json) {
  return _Car.fromJson(json);
}

/// @nodoc
mixin _$Car {
  @JsonKey(name: 'id', nullable: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand', nullable: true)
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'model', nullable: true)
  String? get model => throw _privateConstructorUsedError;
  @JsonKey(name: 'color', nullable: true)
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'year', nullable: true)
  String? get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'ownerId', nullable: true)
  String? get ownerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarCopyWith<Car> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarCopyWith<$Res> {
  factory $CarCopyWith(Car value, $Res Function(Car) then) =
      _$CarCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', nullable: true) String? id,
      @JsonKey(name: 'brand', nullable: true) String? brand,
      @JsonKey(name: 'model', nullable: true) String? model,
      @JsonKey(name: 'color', nullable: true) String? color,
      @JsonKey(name: 'year', nullable: true) String? year,
      @JsonKey(name: 'ownerId', nullable: true) String? ownerId});
}

/// @nodoc
class _$CarCopyWithImpl<$Res> implements $CarCopyWith<$Res> {
  _$CarCopyWithImpl(this._value, this._then);

  final Car _value;
  // ignore: unused_field
  final $Res Function(Car) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? brand = freezed,
    Object? model = freezed,
    Object? color = freezed,
    Object? year = freezed,
    Object? ownerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CarCopyWith<$Res> implements $CarCopyWith<$Res> {
  factory _$$_CarCopyWith(_$_Car value, $Res Function(_$_Car) then) =
      __$$_CarCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', nullable: true) String? id,
      @JsonKey(name: 'brand', nullable: true) String? brand,
      @JsonKey(name: 'model', nullable: true) String? model,
      @JsonKey(name: 'color', nullable: true) String? color,
      @JsonKey(name: 'year', nullable: true) String? year,
      @JsonKey(name: 'ownerId', nullable: true) String? ownerId});
}

/// @nodoc
class __$$_CarCopyWithImpl<$Res> extends _$CarCopyWithImpl<$Res>
    implements _$$_CarCopyWith<$Res> {
  __$$_CarCopyWithImpl(_$_Car _value, $Res Function(_$_Car) _then)
      : super(_value, (v) => _then(v as _$_Car));

  @override
  _$_Car get _value => super._value as _$_Car;

  @override
  $Res call({
    Object? id = freezed,
    Object? brand = freezed,
    Object? model = freezed,
    Object? color = freezed,
    Object? year = freezed,
    Object? ownerId = freezed,
  }) {
    return _then(_$_Car(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Car implements _Car {
  _$_Car(
      {@JsonKey(name: 'id', nullable: true) this.id = '',
      @JsonKey(name: 'brand', nullable: true) this.brand = '',
      @JsonKey(name: 'model', nullable: true) this.model = '',
      @JsonKey(name: 'color', nullable: true) this.color = '',
      @JsonKey(name: 'year', nullable: true) this.year = '',
      @JsonKey(name: 'ownerId', nullable: true) this.ownerId = ''});

  factory _$_Car.fromJson(Map<String, dynamic> json) => _$$_CarFromJson(json);

  @override
  @JsonKey(name: 'id', nullable: true)
  final String? id;
  @override
  @JsonKey(name: 'brand', nullable: true)
  final String? brand;
  @override
  @JsonKey(name: 'model', nullable: true)
  final String? model;
  @override
  @JsonKey(name: 'color', nullable: true)
  final String? color;
  @override
  @JsonKey(name: 'year', nullable: true)
  final String? year;
  @override
  @JsonKey(name: 'ownerId', nullable: true)
  final String? ownerId;

  @override
  String toString() {
    return 'Car(id: $id, brand: $brand, model: $model, color: $color, year: $year, ownerId: $ownerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Car &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(ownerId));

  @JsonKey(ignore: true)
  @override
  _$$_CarCopyWith<_$_Car> get copyWith =>
      __$$_CarCopyWithImpl<_$_Car>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarToJson(this);
  }
}

abstract class _Car implements Car {
  factory _Car(
          {@JsonKey(name: 'id', nullable: true) final String? id,
          @JsonKey(name: 'brand', nullable: true) final String? brand,
          @JsonKey(name: 'model', nullable: true) final String? model,
          @JsonKey(name: 'color', nullable: true) final String? color,
          @JsonKey(name: 'year', nullable: true) final String? year,
          @JsonKey(name: 'ownerId', nullable: true) final String? ownerId}) =
      _$_Car;

  factory _Car.fromJson(Map<String, dynamic> json) = _$_Car.fromJson;

  @override
  @JsonKey(name: 'id', nullable: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'brand', nullable: true)
  String? get brand => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'model', nullable: true)
  String? get model => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'color', nullable: true)
  String? get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'year', nullable: true)
  String? get year => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ownerId', nullable: true)
  String? get ownerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CarCopyWith<_$_Car> get copyWith => throw _privateConstructorUsedError;
}
