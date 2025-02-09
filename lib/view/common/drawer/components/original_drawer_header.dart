import 'package:be_sharp/provider/public_user_provider.dart';
import 'package:be_sharp/view/common/circle_image/circle_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OriginalDrawerHeader extends ConsumerWidget {
  const OriginalDrawerHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(publicUserProvider);

    return asyncValue.when(
      data: (data) {
        final user = data.user;
        final image = data.image;

        return UserAccountsDrawerHeader(
          accountName: Text(user?.nickNameValue() ?? ''),
          accountEmail: Text(user?.bioValue() ?? ''),
          currentAccountPicture: CircleImage(
            height: 72.0,
            width: 72.0,
            uint8list: image,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (error, stack) => const SizedBox.shrink(),
    );
  }
}
