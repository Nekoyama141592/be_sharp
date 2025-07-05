// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_answer_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createUserAnswerViewModelHash() =>
    r'fe604fa45ddd0e6ba415a91bbacf15e2d0893797';

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

abstract class _$CreateUserAnswerViewModel
    extends BuildlessAutoDisposeAsyncNotifier<ReadProblem?> {
  late final String problemId;

  FutureOr<ReadProblem?> build(
    String problemId,
  );
}

/// See also [CreateUserAnswerViewModel].
@ProviderFor(CreateUserAnswerViewModel)
const createUserAnswerViewModelProvider = CreateUserAnswerViewModelFamily();

/// See also [CreateUserAnswerViewModel].
class CreateUserAnswerViewModelFamily extends Family<AsyncValue<ReadProblem?>> {
  /// See also [CreateUserAnswerViewModel].
  const CreateUserAnswerViewModelFamily();

  /// See also [CreateUserAnswerViewModel].
  CreateUserAnswerViewModelProvider call(
    String problemId,
  ) {
    return CreateUserAnswerViewModelProvider(
      problemId,
    );
  }

  @override
  CreateUserAnswerViewModelProvider getProviderOverride(
    covariant CreateUserAnswerViewModelProvider provider,
  ) {
    return call(
      provider.problemId,
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
  String? get name => r'createUserAnswerViewModelProvider';
}

/// See also [CreateUserAnswerViewModel].
class CreateUserAnswerViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<CreateUserAnswerViewModel,
        ReadProblem?> {
  /// See also [CreateUserAnswerViewModel].
  CreateUserAnswerViewModelProvider(
    String problemId,
  ) : this._internal(
          () => CreateUserAnswerViewModel()..problemId = problemId,
          from: createUserAnswerViewModelProvider,
          name: r'createUserAnswerViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createUserAnswerViewModelHash,
          dependencies: CreateUserAnswerViewModelFamily._dependencies,
          allTransitiveDependencies:
              CreateUserAnswerViewModelFamily._allTransitiveDependencies,
          problemId: problemId,
        );

  CreateUserAnswerViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.problemId,
  }) : super.internal();

  final String problemId;

  @override
  FutureOr<ReadProblem?> runNotifierBuild(
    covariant CreateUserAnswerViewModel notifier,
  ) {
    return notifier.build(
      problemId,
    );
  }

  @override
  Override overrideWith(CreateUserAnswerViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: CreateUserAnswerViewModelProvider._internal(
        () => create()..problemId = problemId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        problemId: problemId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CreateUserAnswerViewModel,
      ReadProblem?> createElement() {
    return _CreateUserAnswerViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateUserAnswerViewModelProvider &&
        other.problemId == problemId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, problemId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateUserAnswerViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<ReadProblem?> {
  /// The parameter `problemId` of this provider.
  String get problemId;
}

class _CreateUserAnswerViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CreateUserAnswerViewModel,
        ReadProblem?> with CreateUserAnswerViewModelRef {
  _CreateUserAnswerViewModelProviderElement(super.provider);

  @override
  String get problemId =>
      (origin as CreateUserAnswerViewModelProvider).problemId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
