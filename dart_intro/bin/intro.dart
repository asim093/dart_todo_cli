import 'dart:io'; // For reading input from the console
import 'dart:convert'; // For encoding and decoding JSON data
import 'package:http/http.dart' as http; // For HTTP requests

void main() {

  var Cars = vehicle("2000hp", 1218 , 8);
  Cars.run();


  var Cyber = Truck("2000hp", 1218, 8 , "Cybertruck", 2008);
  Cyber.run();
  Cyber.race();
  // Students student = Students.customconstructor('Asim', 1460779);
// var courses = Course();
// courses.name = "Mern Stack development";
// courses.duration = "12 month";
// courses.Timing = "9 to 11";
// courses.length = 55;

// courses.details();

}

// class Students {
//   String name;
//   int id;

//   Students(this.name, this.id);

//   void ShowDetails() {
//     print("My name is $name and my ID is $id");
//   }
// }

// class Students {
//   String name = '';
//   int id = 0;
//   Students.customconstructor(String fname, int fid) {
//     this.name = fname;
//     this.id = fid;
//     print("my name is $name and my id is $id");
//   }
// }

// class Course{
//   String name = "";
//   String duration = "";
//   String Timing = "";
//   int _length = 0;

//   void set length(int length){
//     this._length = length;
//   }

//   int get length => this.length;

//   void details(){
//     print("Course name is $name");
//     print("duration is $duration");
//     print("Timing is $Timing");
//     print("length is $_length");
//   }
// }

class vehicle {
  int registerno = 0;
  String EnginePower = "";
  int SittingCapacity = 0;

  vehicle(this.EnginePower , this.registerno , this.SittingCapacity);
  void run(){
    print("$registerno car that engine power is $EnginePower and its Sitting capacity is $SittingCapacity");
  } 
}


class Truck extends vehicle{
  String brand = "";
  int model = 0;
  Truck(String EnginePower , int registerno , int SittingCapacity ,  this.brand , this.model):super(EnginePower  , registerno , SittingCapacity);


  void race(){
    print("$brand $model is racing with another Car where sitting capacity is $SittingCapacity its engine power is $EnginePower and its register no is $registerno");
  }

}