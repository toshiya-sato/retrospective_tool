// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sticky_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StickyNote _$StickyNoteFromJson(Map<String, dynamic> json) {
  return _StickyNote.fromJson(json);
}

/// @nodoc
mixin _$StickyNote {
  String get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickyNoteCopyWith<StickyNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickyNoteCopyWith<$Res> {
  factory $StickyNoteCopyWith(
          StickyNote value, $Res Function(StickyNote) then) =
      _$StickyNoteCopyWithImpl<$Res>;
  $Res call({String id, String category, String title, String description});
}

/// @nodoc
class _$StickyNoteCopyWithImpl<$Res> implements $StickyNoteCopyWith<$Res> {
  _$StickyNoteCopyWithImpl(this._value, this._then);

  final StickyNote _value;
  // ignore: unused_field
  final $Res Function(StickyNote) _then;

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
abstract class _$$_StickyNoteCopyWith<$Res>
    implements $StickyNoteCopyWith<$Res> {
  factory _$$_StickyNoteCopyWith(
          _$_StickyNote value, $Res Function(_$_StickyNote) then) =
      __$$_StickyNoteCopyWithImpl<$Res>;
  @override
  $Res call({String id, String category, String title, String description});
}

/// @nodoc
class __$$_StickyNoteCopyWithImpl<$Res> extends _$StickyNoteCopyWithImpl<$Res>
    implements _$$_StickyNoteCopyWith<$Res> {
  __$$_StickyNoteCopyWithImpl(
      _$_StickyNote _value, $Res Function(_$_StickyNote) _then)
      : super(_value, (v) => _then(v as _$_StickyNote));

  @override
  _$_StickyNote get _value => super._value as _$_StickyNote;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_StickyNote(
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
class _$_StickyNote with DiagnosticableTreeMixin implements _StickyNote {
  _$_StickyNote(
      {required this.id,
      required this.category,
      required this.title,
      required this.description});

  factory _$_StickyNote.fromJson(Map<String, dynamic> json) =>
      _$$_StickyNoteFromJson(json);

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
    return 'StickyNote(id: $id, category: $category, title: $title, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StickyNote'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StickyNote &&
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
  _$$_StickyNoteCopyWith<_$_StickyNote> get copyWith =>
      __$$_StickyNoteCopyWithImpl<_$_StickyNote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StickyNoteToJson(this);
  }
}

abstract class _StickyNote implements StickyNote {
  factory _StickyNote(
      {required final String id,
      required final String category,
      required final String title,
      required final String description}) = _$_StickyNote;

  factory _StickyNote.fromJson(Map<String, dynamic> json) =
      _$_StickyNote.fromJson;

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
  _$$_StickyNoteCopyWith<_$_StickyNote> get copyWith =>
      throw _privateConstructorUsedError;
}
