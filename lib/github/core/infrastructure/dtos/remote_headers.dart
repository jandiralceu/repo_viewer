import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_headers.freezed.dart';
part 'remote_headers.g.dart';

/// Remote headers DTO
@freezed
class RemoteHeaders with _$RemoteHeaders {
  const RemoteHeaders._();

  /// [RemoteHeaders] default constructor
  const factory RemoteHeaders({
    String? etag,
    PaginationLink? link,
  }) = _RemoteHeaders;

  /// Converts a [Response] to a [RemoteHeaders]
  factory RemoteHeaders.parse(Response response) {
    final link = response.headers.map['link']?[0];

    return RemoteHeaders(
      etag: response.headers.map['ETag']?[0],
      link: link == null
          ? null
          : PaginationLink.parse(
              link.split(','),
              requestUrl: response.requestOptions.uri.toString(),
            ),
    );
  }

  /// Creates an [RemoteHeaders] instance from a JSON
  factory RemoteHeaders.fromJson(Map<String, dynamic> json) =>
      _$RemoteHeadersFromJson(json);
}

/// Pagination
@freezed
class PaginationLink with _$PaginationLink {
  const PaginationLink._();

  /// [PaginationLink] default constructor
  const factory PaginationLink({
    required int maxPage,
  }) = _PaginationLink;

  ///
  factory PaginationLink.parse(
    List<String> values, {
    required String requestUrl,
  }) {
    return PaginationLink(
      maxPage: _extractPageNumber(
        values.firstWhere(
          (el) => el.contains('rel="last"'),
          orElse: () => requestUrl,
        ),
      ),
    );
  }

  /// Creates an [PaginationLink] instance from a JSON
  factory PaginationLink.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinkFromJson(json);

  ///
  static int _extractPageNumber(String value) {
    final uriString = RegExp(
      r'[(http(s)?):\/\/(www\.)?a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)',
    ).stringMatch(value);

    return int.parse(Uri.parse(uriString!).queryParameters['page']!);
  }
}
