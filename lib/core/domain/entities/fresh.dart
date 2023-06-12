import 'package:freezed_annotation/freezed_annotation.dart';

part 'fresh.freezed.dart';

/// Represents the data status, if it is updated or not
@freezed
class Fresh<T> with _$Fresh<T> {
  const Fresh._();

  /// [Fresh] default constructor
  const factory Fresh({
    required T entity,
    required bool isFresh,
    int? maxPage,
    @Default(false) bool isNextPageAvailable,
  }) = _Fresh<T>;
}
