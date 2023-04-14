import 'package:bloc/bloc.dart';
import 'package:chat_application/cubit/regis_and_login_cubit/cubit/login_and_regis_state.dart';
import 'package:dio/dio.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  void login(
      {required String loginController,
      required String loginPasswordController}) async {
    try {
      final response =
          await Dio().post("https://api.escuelajs.co/api/v1/auth/login", data: {
        "email": loginController,
        "password": loginPasswordController,
      });

    

      emit(LoginSuccess());
    } on DioError catch (e) {
     
      if (e.response!.statusCode == 401) {
        emit(LoginFailure(errorMessage: "The email or password is incorrect"));
      }
    }
  }

  void signIn(
      {required String nameController,
      required String emailController,
      required String passwordController}) async {
    try {
      final response =
          await Dio().post("https://api.escuelajs.co/api/v1/users/", data: {
        "name": nameController,
        "email": emailController,
        "password": passwordController,
        "avatar": "https://api.lorem.space/image/face?w=640&h=480"
      });

      emit(RegisSuccess());
    } on DioError catch (x) {
      if (x.response!.statusCode == 400) {
        emit(RegisFailure(errorMessage: "You should enter Valid email"));
      }
    }
  }
}
