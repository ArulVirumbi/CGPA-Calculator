import 'package:cgpa_calculator/main.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'login_page.dart';

class AuthController extends GetxController{
  //AuthController.instance
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //our user will be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user){
    if(user==null){
      print("Login page");
      Get.offAll(()=>LoginPage());
    }
    else{
      Get.offAll(()=>MyHomePage());
    }
  }

  Future<String?>register(String email, password) async {
    UserCredential? userCred;
    try{
      userCred = await auth.createUserWithEmailAndPassword(email: email, password: password);
      return userCred.user?.uid;
    }
    catch(e){
      Get.showSnackbar(GetSnackBar(
        title: "Sign up failed",
        message: "Create a new account to continue",
        duration: const Duration(seconds: 5),
      ),
      );
    }
    return userCred?.user?.uid;
  }
  Future<void> login(String email, password) async {
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);
    }
    catch(e){
      Get.showSnackbar(GetSnackBar(
        title: "About Login",
        message: "Login failed",
        duration: const Duration(seconds: 5),
      ),
      );
    }
  }
  Future<void> logOut() async{
    await auth.signOut();
  }
}