// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_product.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedProductHash() => r'af2ff78a209074512e4aaaffdb198e8e58690ffa';

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

/// See also [selectedProduct].
@ProviderFor(selectedProduct)
const selectedProductProvider = SelectedProductFamily();

/// See also [selectedProduct].
class SelectedProductFamily extends Family<AsyncValue<ProductBag>> {
  /// See also [selectedProduct].
  const SelectedProductFamily();

  /// See also [selectedProduct].
  SelectedProductProvider call(
    String id,
  ) {
    return SelectedProductProvider(
      id,
    );
  }

  @override
  SelectedProductProvider getProviderOverride(
    covariant SelectedProductProvider provider,
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
  String? get name => r'selectedProductProvider';
}

/// See also [selectedProduct].
class SelectedProductProvider extends AutoDisposeFutureProvider<ProductBag> {
  /// See also [selectedProduct].
  SelectedProductProvider(
    String id,
  ) : this._internal(
          (ref) => selectedProduct(
            ref as SelectedProductRef,
            id,
          ),
          from: selectedProductProvider,
          name: r'selectedProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectedProductHash,
          dependencies: SelectedProductFamily._dependencies,
          allTransitiveDependencies:
              SelectedProductFamily._allTransitiveDependencies,
          id: id,
        );

  SelectedProductProvider._internal(
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
    FutureOr<ProductBag> Function(SelectedProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SelectedProductProvider._internal(
        (ref) => create(ref as SelectedProductRef),
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
  AutoDisposeFutureProviderElement<ProductBag> createElement() {
    return _SelectedProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SelectedProductProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SelectedProductRef on AutoDisposeFutureProviderRef<ProductBag> {
  /// The parameter `id` of this provider.
  String get id;
}

class _SelectedProductProviderElement
    extends AutoDisposeFutureProviderElement<ProductBag>
    with SelectedProductRef {
  _SelectedProductProviderElement(super.provider);

  @override
  String get id => (origin as SelectedProductProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
