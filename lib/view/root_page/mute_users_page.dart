import 'package:be_sharp/provider/view_model/mute_users_view_model.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MuteUsersPage extends ConsumerWidget {
  const MuteUsersPage({super.key});
  static const path = '/muteUsers';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(muteUsersProvider);
    MuteUsersViewModel notifier() => ref.read(muteUsersProvider.notifier);
    return AsyncScreen(
        asyncValue: asyncValue,
        data: (state) {
          return BasicPage(
            appBarText: 'ミュート解除',
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: state.map((e) {
                  return ListTile(
                    title: Text(e.nickNameValue()),
                    subtitle: Text(e.bioValue()),
                    onTap: () => notifier().onTap(e.uid),
                  );
                }).toList(),
              ),
            ),
          );
        });
  }
}
