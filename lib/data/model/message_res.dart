import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_res.freezed.dart';
part 'message_res.g.dart';

@freezed
class MessageRes with _$MessageRes {
  const factory MessageRes({
    required String message,
  }) = _MessageRes;

  factory MessageRes.fromJson(Map<String, dynamic> json) =>
      _$MessageResFromJson(json);
}
