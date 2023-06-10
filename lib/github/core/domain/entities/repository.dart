import 'package:freezed_annotation/freezed_annotation.dart';

import 'owner.dart';

part 'repository.freezed.dart';

/// Represents a github repository
@freezed
class Repository with _$Repository {
  const Repository._();

  /// [Repository] default constructor
  const factory Repository({
    required Owner owner,
    required String name,
    required String fullName,
    required String description,
    required int stars,
  }) = _Repository;
}
