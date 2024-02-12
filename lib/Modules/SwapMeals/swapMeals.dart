import 'package:fitness_app/Shared/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

class SwapMealsScreen extends StatelessWidget {
  const SwapMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {},
              child: PhosphorIcon(
                PhosphorIconsBold.magnifyingGlass,
                size: 24,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          40.h,
          styledCard(
              width: 320.0,
              height: 174.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                'https://www.budgetbytes.com/wp-content/uploads/2019/06/Lemon-Berry-Yogurt-Breakfast-Bowls-stirred.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Column(
                          
                          children: [
                            Text(
                              'Berry Yogurt',
                              style: TextStyle(
                                color: HexColor('2E2E2E'),
                                fontSize: 24,
                                overflow: TextOverflow.fade,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            8.h,
                            Row(
                              children: [
                                const Text(
                                  '14m',
                                  style: TextStyle(
                                    color: Color(0xFF6E6E6E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                8.w,
                                const PhosphorIcon(
                                  PhosphorIconsFill.dot,
                                  size: 15,
                                  color: Color(0xFF6E6E6E),
                                ),
                                8.w,
                                const Text(
                                  '340 kcal',
                                  style: TextStyle(
                                    color: Color(0xFF6E6E6E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            16.h,
                            TextButton(
                              onPressed: () {
                                navigateTo(context, SwapMealsScreen());
                              },
                              child: Text('Swap',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  )),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      HexColor('F2C70D'))),
                            )
                          ],
                        ),
                        8.h,
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
