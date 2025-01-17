// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movies.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchMoviesHash() => r'96fc20a5ef79619e6771a1cafafa703a3c238fc0';

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

/// See also [searchMovies].
@ProviderFor(searchMovies)
const searchMoviesProvider = SearchMoviesFamily();

/// See also [searchMovies].
class SearchMoviesFamily extends Family<MovieState> {
  /// See also [searchMovies].
  const SearchMoviesFamily();

  /// See also [searchMovies].
  SearchMoviesProvider call(
    String movieName,
  ) {
    return SearchMoviesProvider(
      movieName,
    );
  }

  @override
  SearchMoviesProvider getProviderOverride(
    covariant SearchMoviesProvider provider,
  ) {
    return call(
      provider.movieName,
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
  String? get name => r'searchMoviesProvider';
}

/// See also [searchMovies].
class SearchMoviesProvider extends AutoDisposeProvider<MovieState> {
  /// See also [searchMovies].
  SearchMoviesProvider(
    String movieName,
  ) : this._internal(
          (ref) => searchMovies(
            ref as SearchMoviesRef,
            movieName,
          ),
          from: searchMoviesProvider,
          name: r'searchMoviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchMoviesHash,
          dependencies: SearchMoviesFamily._dependencies,
          allTransitiveDependencies:
              SearchMoviesFamily._allTransitiveDependencies,
          movieName: movieName,
        );

  SearchMoviesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.movieName,
  }) : super.internal();

  final String movieName;

  @override
  Override overrideWith(
    MovieState Function(SearchMoviesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchMoviesProvider._internal(
        (ref) => create(ref as SearchMoviesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        movieName: movieName,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<MovieState> createElement() {
    return _SearchMoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchMoviesProvider && other.movieName == movieName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, movieName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchMoviesRef on AutoDisposeProviderRef<MovieState> {
  /// The parameter `movieName` of this provider.
  String get movieName;
}

class _SearchMoviesProviderElement
    extends AutoDisposeProviderElement<MovieState> with SearchMoviesRef {
  _SearchMoviesProviderElement(super.provider);

  @override
  String get movieName => (origin as SearchMoviesProvider).movieName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
