import 'package:flutter/material.dart';
import 'package:islami_c20/core/resources/assets_manager.dart';
import 'package:islami_c20/core/resources/colors_manager.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int zkrIndex = 0;
  double turns = 0;

  final List<String> azkar = [
    'سبحان الله',
    'الحمد لله',
    'لا إله إلا الله',
    ' الله أكبر',
  ];

  void incrementconter() {
    setState(() {
      counter++;
      turns += 1 / 33;
      if (counter == 34) {
        counter = 0;
        zkrIndex = ((zkrIndex + 1) % azkar.length);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsManager.sebhaBack),

          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            Image.asset(AssetsManager.header),
            SizedBox(height: 16),
            Text(
              'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
              style: TextStyle(
                fontSize: 36,
                fontWeight: .w700,
                color: ColorsManager.whiteColor,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 359,
                    right: 0,
                    left: 0,
                    child: Image.asset(AssetsManager.sebhaheader),
                  ),

                  Positioned(
                    top: 70,
                    bottom: 0,
                    right: 0,
                    left: 0,

                    child: GestureDetector(
                      onTap: incrementconter,
                      child: AnimatedRotation(
                        turns: turns,
                        duration: Duration(milliseconds: 300),
                        child: Image.asset(AssetsManager.sebhabody),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 90),
                          Text(
                            azkar[zkrIndex],
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: .w700,
                              color: ColorsManager.whiteColor,
                            ),
                          ),
                          const SizedBox(height: 20),

                          Text(
                            '$counter',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: .w700,
                              color: ColorsManager.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
