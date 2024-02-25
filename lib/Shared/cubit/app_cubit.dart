import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/Modules/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../Modules/Authentication/Welcome/welcome.dart';
import '../../Modules/Exercises/exercises.dart';
import '../../Modules/Meals/meals.dart';
import '../../Modules/ProfileSetup/profileSetup.dart';
import '../../Network/local/cacheHelper.dart';
import '../../main.dart';
import '../Components/components.dart';
import '../Constants/constants.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = [
    const HomeScreen(),
    const MealsScreen(),
    const ExercisesScreen()
  ];
  dynamic currentScreen = const HomeScreen();

  void changeBNB(screen) {
    currentScreen = screen;
    emit(BNBChangeState());
  }

  bool isViewable = true;
  void changeViewable() {
    if (isViewable == true) {
      isViewable = false;
    } else if (isViewable == false) {
      isViewable = true;
    }
    print(isViewable);

    emit(SuffixChangeState());
  }

  Future<Object?> register(
      {required String email,
      required String password,
      required context,
      required String name}) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      emit(LoadingRegisterState());
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) async {
        print(value.user?.uid);
        // CREATION OF USER-------------

        FirebaseFirestore.instance
            .collection('users')
            .doc(value.user?.uid)
            .set({
          'name': name,
          'email': email,
          'uid': value.user?.uid,
        });
        await CacheHelper.saveData(key: 'uid', value: value.user?.uid);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.green,
          content: Text("Account created successfully!",
              style: TextStyle(color: Colors.white)),
          duration: Duration(seconds: 3),
        ));
        navigateToAndFinish(context, const ProfileSetup());

        return value;
      });
      return userCredential;
    } on FirebaseAuthException catch (e) {
      emit(ErrorRegisterState());
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.red,
          content: Text("The password provided is too weak.",
              style: TextStyle(color: Colors.white)),
          duration: Duration(seconds: 3),
        ));
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.red,
          content: Text("The account already exists for that email.",
              style: TextStyle(color: Colors.white)),
          duration: Duration(seconds: 3),
        ));
      }
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }

  Future<UserCredential?> loginUser(
    String email,
    String password,
    context,
  ) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      emit(LoadingLoginState());
      UserCredential userCredential = await auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        print(value.user?.uid);
        await CacheHelper.saveData(key: 'uid', value: value.user?.uid);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.green,
          content:
              Text("Login Success!", style: TextStyle(color: Colors.white)),
          duration: Duration(seconds: 3),
        ));
        emit(SuccessLoginState());

        return value;
      });
      return userCredential;
    } on FirebaseAuthException catch (e) {
      emit(ErrorLoginState());
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.red,
          content:
              Text("User not found.", style: TextStyle(color: Colors.white)),
          duration: Duration(seconds: 3),
        ));
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.red,
          content: Text("Wrong password provided for that user.",
              style: TextStyle(color: Colors.white)),
          duration: Duration(seconds: 3),
        ));
      }
      return null;
    }
  }

  Future<void> logout(context) async {
    await CacheHelper.removeData(key: 'uid');
    navigateToAndFinish(context, const WelcomeScreen());
  }

  void addExercise(
      {required name,
      required focusArea,
      required equipment,
      required List<String> tips,
      required image,
      required context}) {
    FirebaseFirestore.instance.collection('exercises').doc().set({
      'name': name,
      'icon': '',
      'image': image,
      'focus area': focusArea,
      'equipment': equipment,
      'tips': tips,
    }).then((value) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.green,
        content: Text("Exercise added successfully!",
            style: TextStyle(color: Colors.white)),
        duration: Duration(seconds: 3),
      ));
    }).catchError((e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.red,
        content: Text("Failed to add exercise.",
            style: TextStyle(color: Colors.white)),
        duration: Duration(seconds: 3),
      ));
    });
  }

  void addMeal({
    required diet,
    required image,
    required name,
    required time,
    required calories,
    required List<String> ingredients,
    required List<String> instructions,
    required context,
  }) {
    FirebaseFirestore.instance.collection('meals').doc().set({
      'diet': diet,
      'image': image,
      'name': name,
      'time': time,
      'calories': calories,
      'ingredients': ingredients,
      'instructions': instructions,
    }).then((value) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.green,
        content: Text("Meal added successfully!",
            style: TextStyle(color: Colors.white)),
        duration: Duration(seconds: 3),
      ));
    }).catchError((e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.red,
        content:
            Text("Failed to add meal.", style: TextStyle(color: Colors.white)),
        duration: Duration(seconds: 3),
      ));
    });
  }

  Future<List<DocumentSnapshot>> searchDocuments(String searchQuery) async {
    emit(SearchLoadingState());
    final QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('exercises') // Replace with your collection name
        .where('name', isGreaterThanOrEqualTo: searchQuery)
        .get()
        .whenComplete(() {
      emit(SearchSuccessState());
    }).catchError((e) {
      emit(SearchErrorState());
      print(e.toString());
    });

    return snapshot.docs;
  }

  String searchQuery = '';
  List<DocumentSnapshot> searchResults = [];

  void performSearch() async {
    emit(StartSearchState());
    if (searchQuery.isNotEmpty) {
      final List<DocumentSnapshot> results =
          await searchDocuments(searchQuery.toUpperCase());

      searchResults = results;
    }
  }

  void setupProfile({
    required height,
    required weight,
    required gender,
    required goal,
    required diet,
    required context,
  }) {
    FirebaseFirestore.instance.collection('users').doc(uid).update({
      'height': height,
      'weight': weight,
      'gender': gender,
      'goal': goal,
      'diet': diet,
    }).then((value) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.green,
        content: Text("Profile set successfully!",
            style: TextStyle(color: Colors.white)),
        duration: Duration(seconds: 3),
      ));
      navigateToAndFinish(context, home);
    });
  }

  var height;
  var weight;
  var goal;
  var diet;
  var gender;
  Future<void> getUserProfile() async {
    var collection = FirebaseFirestore.instance.collection('users');
    var docSnapshot = await collection.doc(uid).get();
    if (docSnapshot.exists) {
      Map<String, dynamic> data = docSnapshot.data()!;
      print('USER PROFILE FOUND');
      height = data['height'];
      weight = data['weight'];
      goal = data['goal'];
      diet = data['diet'];
      gender = data['gender'];
    }
  }
}
