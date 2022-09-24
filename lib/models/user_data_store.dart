import 'dart:math';
//1

class FromUserData {
    static String Name ='';
    static String Email ='';
    static String Image ='';

  static setName(name){
    Name = name;
  }

  static getName(){
    return Name;
  }

  static setEmail(email){
    Email = email;
  }

  static getEmail(){
    return Email;
  }

  static setImage(image){
    Image = image;
  }

    static getImage(){
      return Image;
    }
}