// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DestinationModel _$DestinationModelFromJson(Map<String, dynamic> json) {
  return _DestinationModel.fromJson(json);
}

/// @nodoc
mixin _$DestinationModel {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  List<ActivityModel>? get activities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DestinationModelCopyWith<DestinationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationModelCopyWith<$Res> {
  factory $DestinationModelCopyWith(
          DestinationModel value, $Res Function(DestinationModel) then) =
      _$DestinationModelCopyWithImpl<$Res, DestinationModel>;
  @useResult
  $Res call(
      {int? id,
      String name,
      String description,
      List<String> images,
      List<ActivityModel>? activities});
}

/// @nodoc
class _$DestinationModelCopyWithImpl<$Res, $Val extends DestinationModel>
    implements $DestinationModelCopyWith<$Res> {
  _$DestinationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? images = null,
    Object? activities = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ActivityModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DestinationModelImplCopyWith<$Res>
    implements $DestinationModelCopyWith<$Res> {
  factory _$$DestinationModelImplCopyWith(_$DestinationModelImpl value,
          $Res Function(_$DestinationModelImpl) then) =
      __$$DestinationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String name,
      String description,
      List<String> images,
      List<ActivityModel>? activities});
}

/// @nodoc
class __$$DestinationModelImplCopyWithImpl<$Res>
    extends _$DestinationModelCopyWithImpl<$Res, _$DestinationModelImpl>
    implements _$$DestinationModelImplCopyWith<$Res> {
  __$$DestinationModelImplCopyWithImpl(_$DestinationModelImpl _value,
      $Res Function(_$DestinationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? images = null,
    Object? activities = freezed,
  }) {
    return _then(_$DestinationModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      activities: freezed == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ActivityModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DestinationModelImpl
    with DiagnosticableTreeMixin
    implements _DestinationModel {
  const _$DestinationModelImpl(
      {this.id,
      required this.name,
      required this.description,
      required final List<String> images,
      final List<ActivityModel>? activities})
      : _images = images,
        _activities = activities;

  factory _$DestinationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DestinationModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String description;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<ActivityModel>? _activities;
  @override
  List<ActivityModel>? get activities {
    final value = _activities;
    if (value == null) return null;
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DestinationModel(id: $id, name: $name, description: $description, images: $images, activities: $activities)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DestinationModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('activities', activities));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_activities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationModelImplCopyWith<_$DestinationModelImpl> get copyWith =>
      __$$DestinationModelImplCopyWithImpl<_$DestinationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DestinationModelImplToJson(
      this,
    );
  }
}

abstract class _DestinationModel implements DestinationModel {
  const factory _DestinationModel(
      {final int? id,
      required final String name,
      required final String description,
      required final List<String> images,
      final List<ActivityModel>? activities}) = _$DestinationModelImpl;

  factory _DestinationModel.fromJson(Map<String, dynamic> json) =
      _$DestinationModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  String get description;
  @override
  List<String> get images;
  @override
  List<ActivityModel>? get activities;
  @override
  @JsonKey(ignore: true)
  _$$DestinationModelImplCopyWith<_$DestinationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
