// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_problem_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$latestProblemStreamHash() =>
    r'3e704b3517d67321285c5b5cb809fc2987125e38';

/// See also [latestProblemStream].
@ProviderFor(latestProblemStream)
final latestProblemStreamProvider =
    StreamProvider<QuerySnapshot<Map<String, dynamic>>>.internal(
  latestProblemStream,
  name: r'latestProblemStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$latestProblemStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LatestProblemStreamRef
    = StreamProviderRef<QuerySnapshot<Map<String, dynamic>>>;
String _$latestProblemNotifierHash() =>
    r'9c2c1547967dc1e7e1e9e71dc218e12177132158';

/// See also [LatestProblemNotifier].
@ProviderFor(LatestProblemNotifier)
final latestProblemNotifierProvider = AsyncNotifierProvider<
    LatestProblemNotifier, LatestProblemNotifierState>.internal(
  LatestProblemNotifier.new,
  name: r'latestProblemNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$latestProblemNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LatestProblemNotifier = AsyncNotifier<LatestProblemNotifierState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
