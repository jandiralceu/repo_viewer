import '../../infrastructure/dtos/dtos.dart';
import '../entities/entities.dart';

extension DTOListToDomainList on List<RepositoryDTO> {
  /// Converst a [List<RepositoryDTO>] to [List<Repository>]
  List<Repository> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
