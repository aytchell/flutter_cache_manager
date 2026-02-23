import 'package:file/file.dart';
import 'package:flutter_cache_manager/src/result/file_response.dart';

///Flutter Cache Manager
///Copyright (c) 2019 Rene Floor
///Released under MIT License.

/// Enum for whether the file is coming from the cache or is just downloaded.
// ignore: constant_identifier_names
enum FileSource { NA, Cache, Online }

/// FileInfo contains the fetch File next to some info on the validity and
/// the origin of the file.
class FileInfo extends FileResponse {
  const FileInfo({
    required this.file,
    required this.source,
    required this.validTill,
    required super.originalUrl,
    required this.statusCode,
    required this.etag,
  });

  /// Fetched file
  final File file;

  /// Source from the file, can be cache or online (web).
  final FileSource source;

  /// Validity date of the file. After this date the validity is not guaranteed
  /// and the CacheManager will try to update the file.
  final DateTime validTill;

  final int statusCode;

  /// eTag of the originally downloaded file
  final String? etag;
}
