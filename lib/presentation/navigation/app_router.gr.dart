// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AccountPage]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute({List<PageRouteInfo>? children})
      : super(AccountRoute.name, initialChildren: children);

  static const String name = 'AccountRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AccountPage();
    },
  );
}

/// generated route for
/// [AdminPage]
class AdminRoute extends PageRouteInfo<AdminRouteArgs> {
  AdminRoute({Key? key, List<PageRouteInfo>? children})
      : super(
          AdminRoute.name,
          args: AdminRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminRouteArgs>(
        orElse: () => const AdminRouteArgs(),
      );
      return AdminPage(key: args.key);
    },
  );
}

class AdminRouteArgs {
  const AdminRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AdminRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AdminRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [CreateUserAnswerPage]
class CreateUserAnswerRoute extends PageRouteInfo<CreateUserAnswerRouteArgs> {
  CreateUserAnswerRoute({
    Key? key,
    String? problemId,
    List<PageRouteInfo>? children,
  }) : super(
          CreateUserAnswerRoute.name,
          args: CreateUserAnswerRouteArgs(key: key, problemId: problemId),
          initialChildren: children,
        );

  static const String name = 'CreateUserAnswerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateUserAnswerRouteArgs>(
        orElse: () => const CreateUserAnswerRouteArgs(),
      );
      return CreateUserAnswerPage(key: args.key, problemId: args.problemId);
    },
  );
}

class CreateUserAnswerRouteArgs {
  const CreateUserAnswerRouteArgs({this.key, this.problemId});

  final Key? key;

  final String? problemId;

  @override
  String toString() {
    return 'CreateUserAnswerRouteArgs{key: $key, problemId: $problemId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CreateUserAnswerRouteArgs) return false;
    return key == other.key && problemId == other.problemId;
  }

  @override
  int get hashCode => key.hashCode ^ problemId.hashCode;
}

/// generated route for
/// [EditUserPage]
class EditUserRoute extends PageRouteInfo<void> {
  const EditUserRoute({List<PageRouteInfo>? children})
      : super(EditUserRoute.name, initialChildren: children);

  static const String name = 'EditUserRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EditUserPage();
    },
  );
}

/// generated route for
/// [FirstPage]
class FirstRoute extends PageRouteInfo<void> {
  const FirstRoute({List<PageRouteInfo>? children})
      : super(FirstRoute.name, initialChildren: children);

  static const String name = 'FirstRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FirstPage();
    },
  );
}

/// generated route for
/// [LogoutedPage]
class LogoutedRoute extends PageRouteInfo<void> {
  const LogoutedRoute({List<PageRouteInfo>? children})
      : super(LogoutedRoute.name, initialChildren: children);

  static const String name = 'LogoutedRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LogoutedPage();
    },
  );
}

/// generated route for
/// [MuteUsersPage]
class MuteUsersRoute extends PageRouteInfo<void> {
  const MuteUsersRoute({List<PageRouteInfo>? children})
      : super(MuteUsersRoute.name, initialChildren: children);

  static const String name = 'MuteUsersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MuteUsersPage();
    },
  );
}

/// generated route for
/// [ReauthenticateToDeletePage]
class ReauthenticateToDeleteRoute extends PageRouteInfo<void> {
  const ReauthenticateToDeleteRoute({List<PageRouteInfo>? children})
      : super(ReauthenticateToDeleteRoute.name, initialChildren: children);

  static const String name = 'ReauthenticateToDeleteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ReauthenticateToDeletePage();
    },
  );
}

/// generated route for
/// [UserDeletedPage]
class UserDeletedRoute extends PageRouteInfo<void> {
  const UserDeletedRoute({List<PageRouteInfo>? children})
      : super(UserDeletedRoute.name, initialChildren: children);

  static const String name = 'UserDeletedRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UserDeletedPage();
    },
  );
}
