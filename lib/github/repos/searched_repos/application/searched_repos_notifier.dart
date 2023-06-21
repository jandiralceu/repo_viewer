import '../../core/core.dart';
import '../infrastructure/infrastructure.dart';

/// Searched repos notifier
class SearchedReposNotifier extends PaginatedReposNotifier {
  final SearchedReposRepository _repository;

  SearchedReposNotifier(this._repository);

  Future<void> getNextSearchedReposPage(String query) async {
    super.getNextPage((page) => _repository.getSearchedRepos(page, query));
  }
}
