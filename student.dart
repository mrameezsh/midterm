// Q2: Create a class called "Student" with the following attributes and methods:
// ● name (string)
// ● id (string)
// ● courses (list of strings)
// ● add_course(course): adds a course to the student's list of courses.
// ● drop_course(course): removes a course from the student's list of courses.
// ● display_courses(): prints out the student's list of courses.
// Then, create two instances of the Student class, each with their name, id, and courses.
// Finally, call the add_course(), drop_course(), and display_courses() methods on each
// instance and confirm that the information is updated and displayed correctly.

// Ans:
class Student {
  String name;
  String id;
  List<String> courses;

  Student(this.name, this.id, this.courses);

  void addCourse(String course) {
    courses.add(course);
  }

  void dropCourse(String course) {
    courses.remove(course);
  }

  void displayCourses() {
    print("$name's Courses:");
    for (var course in courses) {
      print(course);
    }
  }
}

void main() {
  
  var student1 = Student("rameez sheikh", "89", []);
  var student2 = Student("sharik nawab", "76", []);

  
  student1.addCourse("Math");
  student1.addCourse("Science");
  student1.addCourse("English");
  student1.displayCourses();

  

  
  student2.addCourse("History");
  student2.addCourse("Geography");
  student2.displayCourses();



  
  student1.dropCourse("Math");
  student1.displayCourses();
}
