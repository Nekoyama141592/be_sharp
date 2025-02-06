import 'package:be_sharp/constants/colors.dart';
import 'package:be_sharp/provider/view_model/purchases_view_model.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:google_fonts/google_fonts.dart';

class PurchasesScreen extends ConsumerWidget {
  const PurchasesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PurchasesViewModel notifier() => ref.read(purchasesProvider.notifier);
    final asyncValue = ref.watch(purchasesProvider);
    return AsyncScreen(
      asyncValue: asyncValue,
      data: (state) {
        final ProductDetails product = state.products.first;
        return Scaffold(
          backgroundColor: scaffoldBackgroundColor,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
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
                  Card(
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
                                '月額プラン',
                                style: GoogleFonts.notoSans(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          const SubscriptionEffect(text: 'キャプションが追加可能に'),
                          const SizedBox(height: 12),
                          const SubscriptionEffect(text: '自分の順位が閲覧可能に'),
                          const SizedBox(height: 24),
                          Text(
                            '${product.price}(1ヶ月ごと)',
                            style: GoogleFonts.notoSans(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade700,
                            ),
                          ),
                          const SizedBox(height: 24),
                          PurchaseButton(
                            isPurchased: state.isPurchased(product.id),
                            onPressed: () {
                              notifier().onPurchaseButtonPressed(product);
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
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
