import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_response.freezed.dart';

/// Represent the remote datasource status
@freezed
class RemoteResponse<T> with _$RemoteResponse<T> {
  const RemoteResponse._();

  /// Device does not have an internet connection
  const factory RemoteResponse.noConnection({required int maxPage}) =
      _NoConnection<T>;

  /// Data has not modified since last request
  const factory RemoteResponse.notModified({required int maxPage}) =
      _NotModified<T>;

  /// Data has been modified since last request
  const factory RemoteResponse.withNewData(T data, {required int maxPage}) =
      _WithNewData<T>;
}
