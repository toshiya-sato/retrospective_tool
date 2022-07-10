// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kpt_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KptNote _$KptNoteFromJson(Map<String, dynamic> json) {
  return _KptNote.fromJson(json);
}

/// @nodoc
mixin _$KptNote {
  String get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KptNoteCopyWith<KptNote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KptNoteCopyWith<$Res> {
  factory $KptNoteCopyWith(KptNote value, $Res Function(KptNote) then) =
      _$KptNoteCopyWithImpl<$Res>;
  $Res call({String id, String category, String title, String description});
}

/// @nodoc
class _$KptNoteCopyWithImpl<$Res> implements $KptNoteCopyWith<$Res> {
  _$KptNoteCopyWithImpl(this._value, this._then);

  final KptNote _value;
  // ignore: unused_field
  final $Res Function(KptNote) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_KptNoteCopyWith<$Res> implements $KptNoteCopyWith<$Res> {
  factory _$$_KptNoteCopyWith(
          _$_KptNote value, $Res Function(_$_KptNote) then) =
      __$$_KptNoteCopyWithImpl<$Res>;
  @override
  $Res call({String id, String category, String title, String description});
}

/// @nodoc
class __$$_KptNoteCopyWithImpl<$Res> extends _$KptNoteCopyWithImpl<$Res>
    implements _$$_KptNoteCopyWith<$Res> {
  __$$_KptNoteCopyWithImpl(_$_KptNote _value, $Res Function(_$_KptNote) _then)
      : super(_value, (v) => _then(v as _$_KptNote));

  @override
  _$_KptNote get _value => super._value as _$_KptNote;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_KptNote(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KptNote with DiagnosticableTreeMixin implements _KptNote {
  _$_KptNote(
      {required this.id,
      required this.category,
      required this.title,
      required this.description});

  factory _$_KptNote.fromJson(Map<String, dynamic> json) =>
      _$$_KptNoteFromJson(json);

  @override
  final String id;
  @override
  final String category;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KptNote(id: $id, category: $category, title: $title, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'KptNote'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KptNote &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_KptNoteCopyWith<_$_KptNote> get copyWith =>
      __$$_KptNoteCopyWithImpl<_$_KptNote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KptNoteToJson(this);
  }
}

abstract class _KptNote implements KptNote {
  factory _KptNote(
      {required final String id,
      required final String category,
      required final String title,
      required final String description}) = _$_KptNote;

  factory _KptNote.fromJson(Map<String, dynamic> json) = _$_KptNote.fromJson;

  @override
  String get id;
  @override
  String get category;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_KptNoteCopyWith<_$_KptNote> get copyWith =>
      throw _privateConstructorUsedError;
}
