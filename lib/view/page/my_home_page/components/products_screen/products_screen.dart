import 'package:be_sharp/constants/colors.dart';
import 'package:be_sharp/core/purchase_core.dart';
import 'package:be_sharp/provider/keep_alive/notifier/purchases/purchase_notifier.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/page/my_home_page/components/products_screen/components/policy_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsScreen extends ConsumerWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PurchaseNotifier notifier() => ref.read(purchaseNotifierProvider.notifier);
    final asyncValue = ref.watch(purchaseNotifierProvider);
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
                    Text(
                      'サブスクリプション',
                      style: GoogleFonts.notoSans(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const PolicyButtons(),
                    const SizedBox(height: 24),
                    TextButton(
                      onPressed: notifier().onRestoreButtonPressed,
                      child: Text(
                        '購入を復元',
                        style: GoogleFonts.notoSans(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const SubscriptionEffect(text: 'キャプションが追加可能に'),
                    const SizedBox(height: 24),
                    ...products.map((product) {
                      return PurchaseCard(
                        product: product,
                        isMonthPlan: product.id == PurchaseCore.monthItemId(),
                        isPurchased: state.isPurchased(product.id),
                        onPressed: () {
                          notifier().onPurchaseButtonPressed(product);
                        },
                      );
                    })
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
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isPurchased ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isPurchased ? Colors.grey : Colors.blue.shade700,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          isPurchased ? '購入済みです' : '購入する',
          style: GoogleFonts.notoSans(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
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
        const Icon(
          Icons.check,
          color: Colors.green,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: GoogleFonts.notoSans(
            fontSize: 16,
            color: Colors.black,
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
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 8,
      shadowColor: Colors.black26,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.subscriptions,
                      size: 32, color: Colors.blue.shade700),
                ),
                const SizedBox(width: 16),
                Text(
                  isMonthPlan ? '月額プラン' : '年額プラン',
                  style: GoogleFonts.notoSans(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            Text(
              '${product.price}(${isMonthPlan ? '1月ごと' : '1年ごと'})',
              style: GoogleFonts.notoSans(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700,
              ),
            ),
            const SizedBox(height: 24),
            PurchaseButton(
              isPurchased: isPurchased,
              onPressed: onPressed,
            )
          ],
        ),
      ),
    );
  }
}
