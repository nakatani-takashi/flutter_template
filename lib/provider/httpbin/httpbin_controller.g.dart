// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'httpbin_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$httpbinControllerHash() => r'2e05f3550cad8ad293f4a4020e250a587ce88d23';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$HttpbinController
    extends BuildlessAutoDisposeAsyncNotifier<Result<HttpBinResponse>> {
  late final String id;

  FutureOr<Result<HttpBinResponse>> build(
    String id,
  );
}

/// See also [HttpbinController].
@ProviderFor(HttpbinController)
const httpbinControllerProvider = HttpbinControllerFamily();

/// See also [HttpbinController].
class HttpbinControllerFamily
    extends Family<AsyncValue<Result<HttpBinResponse>>> {
  /// See also [HttpbinController].
  const HttpbinControllerFamily();

  /// See also [HttpbinController].
  HttpbinControllerProvider call(
    String id,
  ) {
    return HttpbinControllerProvider(
      id,
    );
  }

  @override
  HttpbinControllerProvider getProviderOverride(
    covariant HttpbinControllerProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'httpbinControllerProvider';
}

/// See also [HttpbinController].
class HttpbinControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    HttpbinController, Result<HttpBinResponse>> {
  /// See also [HttpbinController].
  HttpbinControllerProvider(
    String id,
  ) : this._internal(
          () => HttpbinController()..id = id,
          from: httpbinControllerProvider,
          name: r'httpbinControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$httpbinControllerHash,
          dependencies: HttpbinControllerFamily._dependencies,
          allTransitiveDependencies:
              HttpbinControllerFamily._allTransitiveDependencies,
          id: id,
        );

  HttpbinControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<Result<HttpBinResponse>> runNotifierBuild(
    covariant HttpbinController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(HttpbinController Function() create) {
    return ProviderOverride(
      origin: this,
      override: HttpbinControllerProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<HttpbinController,
      Result<HttpBinResponse>> createElement() {
    return _HttpbinControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HttpbinControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HttpbinControllerRef
    on AutoDisposeAsyncNotifierProviderRef<Result<HttpBinResponse>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _HttpbinControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HttpbinController,
        Result<HttpBinResponse>> with HttpbinControllerRef {
  _HttpbinControllerProviderElement(super.provider);

  @override
  String get id => (origin as HttpbinControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
