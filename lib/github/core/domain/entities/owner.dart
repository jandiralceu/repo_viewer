import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner.freezed.dart';

/// Represents the owner repository information
@freezed
class Owner with _$Owner {
  const Owner._();

  /// [Owner] default constructor
  const factory Owner({
    required String name,
    required String avatarUrl,
  }) = _Owner;
}
