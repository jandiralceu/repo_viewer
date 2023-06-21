import '../../core/core.dart';
import '../infrastructure/infrastructure.dart';

/// Starred repos notifier
class StarredReposNotifier extends PaginatedReposNotifier {
  final StarredReposRepository _repository;

  StarredReposNotifier(this._repository);

  Future<void> getNextStarredReposPage() async {
    super.getNextPage((page) => _repository.getStarredRepos(page));
  }
}
