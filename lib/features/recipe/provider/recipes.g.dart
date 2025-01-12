// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedRecipeHash() => r'733b7a85a92574b0469c038581919bc4d6c3a3ce';

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

/// See also [selectedRecipe].
@ProviderFor(selectedRecipe)
const selectedRecipeProvider = SelectedRecipeFamily();

/// See also [selectedRecipe].
class SelectedRecipeFamily extends Family<AsyncValue<Recipe>> {
  /// See also [selectedRecipe].
  const SelectedRecipeFamily();

  /// See also [selectedRecipe].
  SelectedRecipeProvider call(
    String id,
  ) {
    return SelectedRecipeProvider(
      id,
    );
  }

  @override
  SelectedRecipeProvider getProviderOverride(
    covariant SelectedRecipeProvider provider,
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
  String? get name => r'selectedRecipeProvider';
}

/// See also [selectedRecipe].
class SelectedRecipeProvider extends AutoDisposeFutureProvider<Recipe> {
  /// See also [selectedRecipe].
  SelectedRecipeProvider(
    String id,
  ) : this._internal(
          (ref) => selectedRecipe(
            ref as SelectedRecipeRef,
            id,
          ),
          from: selectedRecipeProvider,
          name: r'selectedRecipeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectedRecipeHash,
          dependencies: SelectedRecipeFamily._dependencies,
          allTransitiveDependencies:
              SelectedRecipeFamily._allTransitiveDependencies,
          id: id,
        );

  SelectedRecipeProvider._internal(
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
    FutureOr<Recipe> Function(SelectedRecipeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SelectedRecipeProvider._internal(
        (ref) => create(ref as SelectedRecipeRef),
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
  AutoDisposeFutureProviderElement<Recipe> createElement() {
    return _SelectedRecipeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SelectedRecipeProvider && other.id == id;
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
mixin SelectedRecipeRef on AutoDisposeFutureProviderRef<Recipe> {
  /// The parameter `id` of this provider.
  String get id;
}

class _SelectedRecipeProviderElement
    extends AutoDisposeFutureProviderElement<Recipe> with SelectedRecipeRef {
  _SelectedRecipeProviderElement(super.provider);

  @override
  String get id => (origin as SelectedRecipeProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
