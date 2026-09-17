import 'package:flutter/material.dart';
import 'package:ppkd_ju_2026/constant/app_colors.dart';
import 'package:ppkd_ju_2026/constant/app_fonts.dart';
import 'package:ppkd_ju_2026/constant/app_images.dart';
import 'package:ppkd_ju_2026/constant/app_texts.dart';

class TesReusable extends StatelessWidget {
  const TesReusable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: const Text(
            AppTexts.appName,
            style: TextStyle(color: AppColors.white, fontWeight: AppFonts.bold),
          ),
      ),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                  
                Text(
                  AppTexts.loginButton,
                  style: TextStyle(
                    color: AppColors.warning,
                    fontSize: 16,
                    fontWeight: AppFonts.medium,
                  ),
                ),

                const Text(
                  AppTexts.loginButton,
                  style: TextStyle(
                    color: AppColors.warning,
                    fontSize: 16,
                    fontWeight: AppFonts.medium,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  AppTexts.loginButton,
                  style: TextStyle(
                    color: AppColors.warning,
                    fontSize: 16,
                    fontWeight: AppFonts.medium,
                  ),
                ),

                const Text(
                  AppTexts.loginButton,
                  style: TextStyle(
                    color: AppColors.warning,
                    fontSize: 16,
                    fontWeight: AppFonts.medium,
                  ),
                ),
              ],
            ),

            //   const SizedBox(height: 20),

            //   // =========================
            //   // BUTTON
            //   // =========================
            //   ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: AppColors.primary,
            //       foregroundColor: AppColors.white,
            //     ),
            //     onPressed: () {},
            //     child: const Text(
            //       AppTexts.loginButton,
            //       style: TextStyle(
            //         fontWeight: AppFonts.semiBold,
            //       ),
            //     ),
            //   ),
          ],
        ),
      
    );
  }
}
