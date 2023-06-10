import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_response.freezed.dart';

/// Represent the remote datasource status
@freezed
class RemoteResponse<T> with _$RemoteResponse<T> {
  const RemoteResponse._();

  /// Device does not have an internet connection
  const factory RemoteResponse.noConnection() = _NoConnection<T>;

  /// Data has not modified since last request
  const factory RemoteResponse.notModified() = _NotModified<T>;

  /// Data has been modified since last request
  const factory RemoteResponse.withNewData(T data) = _WithNewData<T>;
}
