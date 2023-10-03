// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_httpbin_response.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getHttpbinResponseHash() =>
    r'1850717ee1a8c75b34818bb0ab2c2aebcbb38cd8';

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

/// See also [getHttpbinResponse].
@ProviderFor(getHttpbinResponse)
const getHttpbinResponseProvider = GetHttpbinResponseFamily();

/// See also [getHttpbinResponse].
class GetHttpbinResponseFamily
    extends Family<AsyncValue<Result<HttpBinResponse>>> {
  /// See also [getHttpbinResponse].
  const GetHttpbinResponseFamily();

  /// See also [getHttpbinResponse].
  GetHttpbinResponseProvider call(
    String id,
  ) {
    return GetHttpbinResponseProvider(
      id,
    );
  }

  @override
  GetHttpbinResponseProvider getProviderOverride(
    covariant GetHttpbinResponseProvider provider,
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
  String? get name => r'getHttpbinResponseProvider';
}

/// See also [getHttpbinResponse].
class GetHttpbinResponseProvider
    extends AutoDisposeFutureProvider<Result<HttpBinResponse>> {
  /// See also [getHttpbinResponse].
  GetHttpbinResponseProvider(
    String id,
  ) : this._internal(
          (ref) => getHttpbinResponse(
            ref as GetHttpbinResponseRef,
            id,
          ),
          from: getHttpbinResponseProvider,
          name: r'getHttpbinResponseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getHttpbinResponseHash,
          dependencies: GetHttpbinResponseFamily._dependencies,
          allTransitiveDependencies:
              GetHttpbinResponseFamily._allTransitiveDependencies,
          id: id,
        );

  GetHttpbinResponseProvider._internal(
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
  Override overrideWith(
    FutureOr<Result<HttpBinResponse>> Function(GetHttpbinResponseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetHttpbinResponseProvider._internal(
        (ref) => create(ref as GetHttpbinResponseRef),
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
  AutoDisposeFutureProviderElement<Result<HttpBinResponse>> createElement() {
    return _GetHttpbinResponseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetHttpbinResponseProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetHttpbinResponseRef
    on AutoDisposeFutureProviderRef<Result<HttpBinResponse>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetHttpbinResponseProviderElement
    extends AutoDisposeFutureProviderElement<Result<HttpBinResponse>>
    with GetHttpbinResponseRef {
  _GetHttpbinResponseProviderElement(super.provider);

  @override
  String get id => (origin as GetHttpbinResponseProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
