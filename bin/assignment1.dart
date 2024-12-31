abstract class Role {
  void displayRole();
}

class Person implements Role{
  String name;
  int age;
  String address;
  Person(this.name,this.age,this.address);

  String get getName{
    return name;
  }

  int get getAge{
    return age;
  }

  String get getAddress{
    return address;
  }

  @override
  void displayRole() {
    print("Role: Person");
  }
}

class Student extends Person{
  int studentID;
  double grade;
  List<dynamic> courseScores = [];
  Student(this.studentID,this.grade,this.courseScores):super("John Doe",20,"123 Main Street");

  @override
  void displayRole(){
    print("Role: Student");
  }

  double averageScore(){
    double sum = 0.0;

    for(int i=0; i<courseScores.length; i++){
      sum = sum + courseScores[i];
    }

    double avg = sum/(courseScores.length);
    return double.parse(avg.toStringAsFixed(1));
  }
}

class Teacher extends Person{
  int teacherID;
  List<String> courseTaught = [];
  Teacher(this.teacherID,this.courseTaught):super("Mrs. Smith",35,"456 Oak St.");

  @override
  void displayRole(){
    print("Role: Teacher");
  }

  void courses() {
    print("Courses Taught:");
    for (var course in courseTaught) {
      print("- $course");
    }
  }
}

class StudentManagementSystem{}

main(){
  Student student1 = Student(001, 4.0, [90,85,82]);
  Teacher teacher1 = Teacher(100, ["Math", "English", "Bangla"]);

  print("Student Information:");
  student1.displayRole();
  print("Name : ${student1.name}");
  print("Age: ${student1.age}");
  print("Address: ${student1.address}");
  print("Average Score: ${student1.averageScore()}\n");

  print("Teacher Information:");
  teacher1.displayRole();
  print("Name: ${teacher1.name}");
  print("Age: ${teacher1.age}");
  print("Address: ${teacher1.address}");
  teacher1.courses();
}