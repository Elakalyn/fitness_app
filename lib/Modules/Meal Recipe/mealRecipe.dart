import 'package:fitness_app/Shared/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

class MealRecipe extends StatelessWidget {
  const MealRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E2E2E2'),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor("E2E2E2"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              styledCard(
                height: 255.0,
                width: 320.0,
                color: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    'https://www.budgetbytes.com/wp-content/uploads/2019/06/Lemon-Berry-Yogurt-Breakfast-Bowls-stirred.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              24.h,
              Text('Berry Yogurt',
                  style: TextStyle(
                    color: HexColor('2E2E2E'),
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  )),
              32.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        PhosphorIcon(
                          PhosphorIconsFill.fire,
                          size: 48,
                          color: Color(0xFF6E6E6E),
                        ),
                        8.h,
                        Text('340 kcal',
                            style: TextStyle(
                              color: HexColor('6E6E6E'),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 77,
                      width: 1,
                      color: HexColor('C5C5C5'),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        PhosphorIcon(
                          PhosphorIconsFill.clockAfternoon,
                          size: 48,
                          color: Color(0xFF6E6E6E),
                        ),
                        8.h,
                        Text('14m',
                            style: TextStyle(
                              color: HexColor('6E6E6E'),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              48.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('INGREDIENTS',
                          style: TextStyle(
                            color: HexColor('4E4E4E'),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                      8.h,
                      Text('• Maintain an upright posture',
                          style: TextStyle(
                            color: HexColor('4E4E4E'),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )),
                      Text('• Run on soft surface to reduce joint impact',
                          style: TextStyle(
                            color: HexColor('4E4E4E'),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )),
                      Text('• Take short strides to reduce joint impact',
                          style: TextStyle(
                            color: HexColor('4E4E4E'),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                ),
              ),
              32.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('INSTRUCTIONS',
                          style: TextStyle(
                            color: HexColor('4E4E4E'),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                      8.h,
                      Text('• Maintain an upright posture',
                          style: TextStyle(
                            color: HexColor('4E4E4E'),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )),
                      Text('• Run on soft surface to reduce joint impact',
                          style: TextStyle(
                            color: HexColor('4E4E4E'),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )),
                      Text('• Take short strides to reduce joint impact',
                          style: TextStyle(
                            color: HexColor('4E4E4E'),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )),
                      32.h,
                      TextButton(
                        onPressed: () {},
                        child: Text('Swap',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            )),
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStatePropertyAll(Size(320, 47)),
                            backgroundColor:
                                MaterialStatePropertyAll(HexColor('F2C70D'))),
                      ),48.h,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
