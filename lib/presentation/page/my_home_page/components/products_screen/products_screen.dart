import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:be_sharp/core/util/purchase_util.dart';
import 'package:be_sharp/presentation/notifier/keep_alive/products/products_notifier.dart';
import 'package:be_sharp/presentation/util/toast_ui_util.dart';
import 'package:be_sharp/presentation/common/async_screen.dart';
import 'package:be_sharp/presentation/page/my_home_page/components/products_screen/components/policy_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsScreen extends ConsumerWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductsNotifier notifier() => ref.read(productsNotifierProvider.notifier);
    final asyncValue = ref.watch(productsNotifierProvider);
    return AsyncScreen(
      asyncValue: asyncValue,
      data: (state) {
        final products = state.products;
        return Scaffold(
          backgroundColor: scaffoldBackgroundColor,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PolicyButtons(),
                    const SizedBox(height: 12),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.premiumCardBackground,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: AppColors.border,
                          width: 1,
                        ),
                      ),
                      child: TextButton.icon(
                        onPressed: () async {
                          final result =
                              await notifier().onRestoreButtonPressed();
                          result.when(
                            success: (_) => ToastUiUtil.showSuccessSnackBar(
                                context, '購入の検証が成功しました'),
                            failure: (msg) =>
                                ToastUiUtil.showFailureSnackBar(context, msg),
                          );
                        },
                        icon: const Icon(
                          Icons.restore,
                          color: AppColors.text,
                          size: 20,
                        ),
                        label: Text(
                          '購入を復元',
                          style: GoogleFonts.notoSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.text,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: AppColors.premiumCardBackground,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: AppColors.premiumAccent.withValues(alpha: 0.3),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: AppColors.premiumAccent
                                      .withValues(alpha: 0.2),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(
                                  Icons.star,
                                  color: AppColors.text,
                                  size: 20,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Text(
                                'プレミアム特典',
                                style: GoogleFonts.notoSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.text,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          const SubscriptionEffect(text: 'キャプションが追加可能に'),
                          const SizedBox(height: 8),
                          const SubscriptionEffect(text: '新機能を優先的に利用可能'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: products.map((product) {
                        return Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                              right: product.id == PurchaseUtil.monthItemId()
                                  ? 8
                                  : 0,
                              left: product.id != PurchaseUtil.monthItemId()
                                  ? 8
                                  : 0,
                            ),
                            child: PurchaseCard(
                              product: product,
                              isMonthPlan:
                                  product.id == PurchaseUtil.monthItemId(),
                              isPurchased: state.isPurchased(product.id),
                              onPressed: () async {
                                ToastUiUtil.showSuccessSnackBar(
                                  context,
                                  '情報を取得しています。 \nしばらくお待ちください。',
                                );
                                final result =
                                    await notifier().onPurchaseButtonPressed(
                                  product,
                                );
                                result.when(
                                  success: (_) {
                                    ToastUiUtil.showSuccessSnackBar(
                                      context,
                                      '購入が成功しました',
                                    );
                                  },
                                  failure: (msg) {
                                    ToastUiUtil.showFailureSnackBar(
                                        context, msg);
                                  },
                                );
                              },
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class PurchaseButton extends StatelessWidget {
  const PurchaseButton({super.key, required this.isPurchased, this.onPressed});
  final bool isPurchased;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: isPurchased ? AppColors.inactive : AppColors.text,
        borderRadius: BorderRadius.circular(12),
        border:
            isPurchased ? Border.all(color: AppColors.border, width: 1) : null,
      ),
      child: ElevatedButton(
        onPressed: isPurchased ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isPurchased) ...[
              const Icon(
                Icons.check_circle,
                color: AppColors.textLight,
                size: 20,
              ),
              const SizedBox(width: 8),
            ] else ...[
              const Icon(
                Icons.star,
                color: Colors.black,
                size: 20,
              ),
              const SizedBox(width: 8),
            ],
            Text(
              '購入',
              style: GoogleFonts.notoSans(
                fontSize: isPurchased ? 16 : 17,
                fontWeight: FontWeight.w600,
                color: isPurchased ? AppColors.textLight : AppColors.background,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubscriptionEffect extends StatelessWidget {
  const SubscriptionEffect({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColors.premiumSuccess.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Icon(
            Icons.check,
            color: AppColors.premiumSuccess,
            size: 16,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: GoogleFonts.notoSans(
            fontSize: 16,
            color: AppColors.text,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class PurchaseCard extends StatelessWidget {
  const PurchaseCard(
      {super.key,
      required this.product,
      required this.isMonthPlan,
      required this.isPurchased,
      required this.onPressed});
  final ProductDetails product;
  final bool isPurchased;
  final bool isMonthPlan;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final isRecommended = !isMonthPlan; // 年額プランを推奨

    return Container(
      height: 320,
      decoration: BoxDecoration(
        color: AppColors.premiumCardBackground,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isRecommended ? AppColors.text : AppColors.border,
          width: isRecommended ? 2 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColors.border,
                      width: 1,
                    ),
                  ),
                  child: Icon(
                    isMonthPlan ? Icons.calendar_month : Icons.calendar_today,
                    size: 28,
                    color: AppColors.text,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  isMonthPlan ? '月額プラン' : '年額プラン',
                  style: GoogleFonts.notoSans(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.text,
                  ),
                  textAlign: TextAlign.center,
                ),
                if (!isMonthPlan) ...[
                  const SizedBox(height: 8),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.premiumSuccess.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      '2ヶ月分お得',
                      style: GoogleFonts.notoSans(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: AppColors.premiumSuccess,
                      ),
                    ),
                  ),
                ],
                const SizedBox(height: 20),
                Column(
                  children: [
                    Text(
                      product.price,
                      style: GoogleFonts.notoSans(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppColors.text,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      isMonthPlan ? '/月' : '/年',
                      style: GoogleFonts.notoSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textLight,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                PurchaseButton(
                  isPurchased: isPurchased,
                  onPressed: onPressed,
                ),
              ],
            ),
          ),
          if (isRecommended)
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.text,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'おすすめ',
                  style: GoogleFonts.notoSans(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: AppColors.background,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
