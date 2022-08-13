import 'package:resume/models/user.dart';

class UserService{
static UserService _singleton =UserService._internal();

factory UserService(){
return _singleton;
}

UserService._internal();


static loginUser(User user){
  //login process...
}
static signupUser(User user){
  //signup process...
}
static forgetPassword(User user){

}


}