import 'package:flutter_template/data/api/github/github_http_client.dart';
import 'package:flutter_template/data/api/provider/github/github_accesstoken_provider.dart';
import 'package:flutter_template/data/api/provider/http_client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'github_http_client_provider.g.dart';

@Riverpod(keepAlive: true)
GitHubHttpClient gitHubHttpClient(GitHubHttpClientRef ref) => GitHubHttpClient(
    client: ref.watch(httpClientProvider),
    token: ref.watch(githubAccessTokenProvider));
