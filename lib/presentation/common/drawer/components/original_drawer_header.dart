import 'package:be_sharp/presentation/notifier/auto_dispose/original_drawer/original_drawer_view_model.dart';
import 'package:be_sharp/presentation/common/circle_image/circle_image.dart';
import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

class OriginalDrawerHeader extends ConsumerWidget {
  const OriginalDrawerHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(originalDrawerProvider);

    return asyncValue.when(
      data: (data) {
        final user = data.user;
        final image = data.image;

        return Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
          decoration: const BoxDecoration(
            color: AppColors.surface,
            border: Border(
              bottom: BorderSide(
                color: AppColors.border,
                width: 0.5,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleImage(
                height: 56.0,
                width: 56.0,
                image: image,
              ),
              const SizedBox(height: 12),
              Text(
                user?.nickNameValue() ?? '',
                style: const TextStyle(
                  color: AppColors.text,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                user?.bioValue() ?? '',
                style: const TextStyle(
                  color: AppColors.textLight,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
      loading: () => Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
        decoration: const BoxDecoration(
          color: AppColors.surface,
          border: Border(
            bottom: BorderSide(
              color: AppColors.border,
              width: 0.5,
            ),
          ),
        ),
        child: Shimmer.fromColors(
          baseColor: AppColors.surface,
          highlightColor: AppColors.border,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 56.0,
                height: 56.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 18,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(height: 4),
              Container(
                height: 14,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),
        ),
      ),
      error: (error, stack) => Container(
        width: double.infinity,
        height: 140,
        color: AppColors.surface,
      ),
    );
  }
}
