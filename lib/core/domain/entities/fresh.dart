import 'package:freezed_annotation/freezed_annotation.dart';

part 'fresh.freezed.dart';

/// Represents the data status, if it is updated or not
@freezed
class Fresh<T> with _$Fresh<T> {
  const Fresh._();

  /// [Fresh] default constructor
  const factory Fresh({
    required T entity,
    int? maxPage,
    @Default(false) bool isFresh,
    @Default(false) bool isNextPageAvailable,
  }) = _Fresh<T>;

  /// When data is freshed
  factory Fresh.yes(
    T entity, {
    bool isNextPageAvailable = false,
  }) {
    return Fresh(
      entity: entity,
      isFresh: true,
      isNextPageAvailable: isNextPageAvailable,
    );
  }

  /// When data is not freshed
  factory Fresh.no(
    T entity, {
    bool isNextPageAvailable = false,
  }) {
    return Fresh(
      entity: entity,
      isFresh: false,
      isNextPageAvailable: isNextPageAvailable,
    );
  }
}
