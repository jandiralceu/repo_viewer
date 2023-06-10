import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_viewer/core/infrastrucure/db/sembast_db.dart';

final sembastProvider = Provider((ref) => SembastDatabase());
