// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageRes _$MessageResFromJson(Map<String, dynamic> json) {
  return _MessageRes.fromJson(json);
}

/// @nodoc
mixin _$MessageRes {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageResCopyWith<MessageRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageResCopyWith<$Res> {
  factory $MessageResCopyWith(
          MessageRes value, $Res Function(MessageRes) then) =
      _$MessageResCopyWithImpl<$Res, MessageRes>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MessageResCopyWithImpl<$Res, $Val extends MessageRes>
    implements $MessageResCopyWith<$Res> {
  _$MessageResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageResImplCopyWith<$Res>
    implements $MessageResCopyWith<$Res> {
  factory _$$MessageResImplCopyWith(
          _$MessageResImpl value, $Res Function(_$MessageResImpl) then) =
      __$$MessageResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MessageResImplCopyWithImpl<$Res>
    extends _$MessageResCopyWithImpl<$Res, _$MessageResImpl>
    implements _$$MessageResImplCopyWith<$Res> {
  __$$MessageResImplCopyWithImpl(
      _$MessageResImpl _value, $Res Function(_$MessageResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageResImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageResImpl implements _MessageRes {
  const _$MessageResImpl({required this.message});

  factory _$MessageResImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageResImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'MessageRes(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageResImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageResImplCopyWith<_$MessageResImpl> get copyWith =>
      __$$MessageResImplCopyWithImpl<_$MessageResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageResImplToJson(
      this,
    );
  }
}

abstract class _MessageRes implements MessageRes {
  const factory _MessageRes({required final String message}) = _$MessageResImpl;

  factory _MessageRes.fromJson(Map<String, dynamic> json) =
      _$MessageResImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$MessageResImplCopyWith<_$MessageResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
