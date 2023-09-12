// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_accesstoken_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$githubAccessTokenHash() => r'18e147163cd7335d41f5d1f16063fd8cd8470b54';

/// GitHubアクセストークンプロバイダー
///
/// Copied from [GithubAccessToken].
@ProviderFor(GithubAccessToken)
final githubAccessTokenProvider =
    NotifierProvider<GithubAccessToken, String>.internal(
  GithubAccessToken.new,
  name: r'githubAccessTokenProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$githubAccessTokenHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GithubAccessToken = Notifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
