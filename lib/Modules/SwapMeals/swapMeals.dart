import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness_app/Shared/Components/components.dart';
import 'package:fitness_app/Shared/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

class SwapMealsScreen extends StatelessWidget {
  const SwapMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CollectionReference mealsCollection =
        FirebaseFirestore.instance.collection('meals');
    dynamic mealsRef = mealsCollection;
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                40.h,
                StreamBuilder<QuerySnapshot>(
                  stream: mealsRef.snapshots(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    }

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    }

                    final QuerySnapshot? querySnapshot = snapshot.data;

                    if (querySnapshot == null) {
                      print('DATA DOES NOT EXIST.');
                      return Text(
                        'No data available',
                      );
                    }

                    return ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final DocumentSnapshot<Object?> document =
                            querySnapshot.docs[index];
                        return mealWidget(
                            name: document['name'],
                            calories: document['calories'],
                            diet: document['diet'],
                            time: document['time'],
                            image: document['image']);
                      },
                      separatorBuilder: (context, index) => 16.h,
                      itemCount: querySnapshot.docs.length,
                      physics: NeverScrollableScrollPhysics(),
                    );
                  },
                ),
                40.h,
              ],
            ),
          ),
        );
      },
    );
  }
}

class mealWidget extends StatelessWidget {
  const mealWidget({
    super.key,
    required this.name,
    required this.image,
    required this.time,
    required this.diet,
    required this.calories,
  });
  final name;
  final image;
  final time;
  final diet;
  final calories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: styledCard(
          width: 320.0,
          height: 174.0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.network(
                            image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    20.w,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            maxLines: 1,
                            style: TextStyle(
                              color: HexColor('2E2E2E'),
                              fontSize: 24,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          8.h,
                          Row(
                            children: [
                              Text(
                                time,
                                style: TextStyle(
                                  color: Color(0xFF6E6E6E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              8.w,
                              PhosphorIcon(
                                PhosphorIconsFill.dot,
                                size: 15,
                                color: Color(0xFF6E6E6E),
                              ),
                              8.w,
                              Text(
                                "$calories kcal",
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
                            onPressed: () {},
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
                    ),
                    8.h,
                  ],
                )
              ],
            ),
          )),
    );
  }
}
