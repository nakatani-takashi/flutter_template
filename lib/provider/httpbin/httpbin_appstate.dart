import 'package:flutter_template/data/repository/httpbin_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'httpbin_appstate.g.dart';

@riverpod
HttpBinRepository httpbinRepositoryAppState(HttpbinRepositoryAppStateRef ref) =>
    HttpBinRepository();
