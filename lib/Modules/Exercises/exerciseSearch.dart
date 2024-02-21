import 'package:fitness_app/Modules/Exercises/exercises.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import '../../Shared/cubit/app_cubit.dart';

class ExerciseSearchScreen extends StatelessWidget {
  const ExerciseSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        print(state);
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 20.0, left: 20.0),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (value) {
                            AppCubit.get(context).searchQuery = value;
                          },
                          onSubmitted: (value) {
                            AppCubit.get(context).performSearch();
                          },
                          decoration: InputDecoration(
                            hintText: 'Search',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverFillRemaining(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          40.h,
                          ListView.separated(
                            shrinkWrap: true,
                            separatorBuilder: (context, index) => 20.h,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount:
                                AppCubit.get(context).searchResults.length,
                            itemBuilder: (BuildContext context, int index) {
                              final docSnapshot =
                                  AppCubit.get(context).searchResults[index];
                              // Display the relevant data from the document snapshot
                              return exerciseWidget(
                                  name: docSnapshot['name'],
                                  equipment: docSnapshot['equipment'],
                                  focus: docSnapshot['focus area'],
                                  tips: docSnapshot['tips'],
                                  icon: docSnapshot['icon'],
                                  image: docSnapshot['image']);
                            },
                          ),
                          40.h,
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
