import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sakina/core/theme/app_colors.dart';
import 'package:sakina/core/widgets/custom_app_bar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Myappbar(),
      backgroundColor: AppColors.primaryColor,
      body: Container(
        margin: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find your quiet in the chaos.',
              style: TextStyle(
                color: const Color(0xFF120A00),
                fontSize: 32,
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w400,
                letterSpacing: -1.60,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Curated roommate matches and premium living spaces across Egypt's academic districts.",
              style: TextStyle(
                color: const Color(0xFF4C463C),
                fontSize: 16,
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 24, width: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SearchBar(
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: const Icon(Icons.search),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    hintText: 'Search by area or university...',
                    onChanged: (value) {
                      // Handle search input changes
                    },
                  ),
                ),
                SizedBox(width: 24, height: 24),
                IconButton(
                  padding: const EdgeInsets.all(20),
                  style: IconButton.styleFrom(
                    iconSize: 20,
                    backgroundColor: AppColors.bottomNavigationBarColor,
                    foregroundColor: AppColors.appbarColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    // Handle filter button press
                  },
                  icon: SvgPicture.asset("assets/icons/filtericon.svg"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
