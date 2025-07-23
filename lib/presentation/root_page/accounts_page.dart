import 'package:auto_route/auto_route.dart';
import 'package:be_sharp/core/provider/repository/auth_repository/auth_repository_provider.dart';
import 'package:be_sharp/core/provider/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/presentation/util/toast_ui_util.dart';
import 'package:be_sharp/presentation/root_page/logouted_page.dart';
import 'package:be_sharp/presentation/root_page/reauthenticate_to_delete_page.dart';
import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:be_sharp/core/util/route_util.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class AccountPage extends ConsumerWidget {
  const AccountPage({
    super.key,
  });
  static const path = "/account";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(streamAuthProvider).value;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button and Header section
              Row(
                children: [
                  IconButton(
                    onPressed: () => RouteUtil.back(context),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.text,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'アカウント',
                    style: GoogleFonts.notoSans(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: AppColors.text,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'アカウント情報と設定',
                style: GoogleFonts.notoSans(
                  fontSize: 16,
                  color: AppColors.textLight,
                ),
              ),
              const SizedBox(height: 32),
              
              // Account info section
              _buildInfoCard(
                icon: Icons.person_outline,
                title: 'ユーザーID',
                value: state?.uid ?? '---',
                isSelectable: true,
              ),
              const SizedBox(height: 16),
              
              _buildInfoCard(
                icon: Icons.email_outlined,
                title: 'メールアドレス',
                value: state?.email ?? '---',
                isSelectable: true,
              ),
              const SizedBox(height: 16),
              
              _buildInfoCard(
                icon: Icons.security_outlined,
                title: '認証プロバイダー',
                value: state?.providerData.map((e) => e.providerId).join(', ') ?? '---',
              ),
              const SizedBox(height: 40),
              
              // Action buttons section
              if (state != null) ...[
                Text(
                  'アカウント操作',
                  style: GoogleFonts.notoSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.text,
                  ),
                ),
                const SizedBox(height: 16),
                
                _buildActionButton(
                  icon: Icons.logout,
                  title: 'ログアウト',
                  subtitle: 'アプリからサインアウトします',
                  onTap: () async {
                    final result = await ref.read(authRepositoryProvider).signOut();
                    result.when(success: (_) {
                      RouteUtil.pushPath(context, LogoutedPage.path);
                    }, failure: (msg) {
                      ToastUiUtil.showErrorFlutterToast(msg);
                    });
                  },
                ),
                const SizedBox(height: 12),
                
                _buildActionButton(
                  icon: Icons.delete_forever_outlined,
                  title: 'アカウントを削除',
                  subtitle: 'この操作は取り消しできません',
                  isDestructive: true,
                  onTap: () => RouteUtil.pushPath(
                      context, ReauthenticateToDeletePage.path),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String value,
    bool isSelectable = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.border,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: AppColors.text,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.notoSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textLight,
                  ),
                ),
                const SizedBox(height: 4),
                isSelectable
                    ? SelectableText(
                        value,
                        style: GoogleFonts.notoSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.text,
                        ),
                      )
                    : Text(
                        value,
                        style: GoogleFonts.notoSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.text,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildActionButton({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    bool isDestructive = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isDestructive ? Colors.red.withValues(alpha: 0.3) : AppColors.border,
          width: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isDestructive 
                        ? Colors.red.withValues(alpha: 0.1)
                        : AppColors.surface,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icon,
                    color: isDestructive ? Colors.red : AppColors.text,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.notoSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: isDestructive ? Colors.red : AppColors.text,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: GoogleFonts.notoSans(
                          fontSize: 14,
                          color: AppColors.textLight,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.textLight,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
