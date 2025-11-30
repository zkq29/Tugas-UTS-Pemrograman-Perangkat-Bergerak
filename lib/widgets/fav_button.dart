import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/favorite_provider.dart';
import '../app_theme.dart';

// Custom Widget Favorite Button
class FavButton extends StatelessWidget {
  final String productId;
  final double size;

  const FavButton({super.key, required this.productId, this.size = 36});

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(
      builder: (context, favoriteProvider, child) {
        final isFavorite = favoriteProvider.isFavorite(productId);

        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                favoriteProvider.toggleFavorite(productId);

                // Tampilkan snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      isFavorite
                          ? 'Dihapus dari favorit'
                          : 'Ditambahkan ke favorit',
                    ),
                    duration: const Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: isFavorite
                        ? AppTheme.errorColor
                        : AppTheme.successColor,
                  ),
                );
              },
              customBorder: const CircleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite
                      ? AppTheme.errorColor
                      : AppTheme.textSecondary,
                  size: size - 16,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
