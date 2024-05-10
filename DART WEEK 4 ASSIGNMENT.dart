import 'dart:io';

// Define an abstract class called Attendee representing common behavior of attendees at an event
abstract class Attendee {
  void attendEvent(); // Method to represent the action of attending the event
}

// Define a class called Person representing a generic person with basic attributes
class Person {
  String name; // Name of the person
  int age; // Age of the person
  String gender; // Gender of the person

  // Constructor for the Person class
  Person(this.name, this.age, this.gender);

  // Override the toString method to provide a string representation of a Person object
  @override
  String toString() {
    return 'Name: $name, Age: $age, Gender: $gender';
  }
}

// Define a class called Student, a type of Person implementing the Attendee interface
class Student extends Person implements Attendee {
  int studentId; // Student ID of the student

  // Constructor for the Student class
  Student(String name, int age, String gender, this.studentId)
      : super(name, age, gender);

  // Override the attendEvent method from the Attendee interface
  @override
  void attendEvent() {
    print('$name is attending the event as a student.');
  }

  // Override the toString method to provide a string representation of a Student object
  @override
  String toString() {
    return super.toString() + ', Student ID: $studentId';
  }
}

// Define a class called Teacher, a type of Person
class Teacher extends Person {
  String subject; // Subject taught by the teacher

  // Constructor for the Teacher class
  Teacher(String name, int age, String gender, this.subject)
      : super(name, age, gender);

  // Override the toString method to provide a string representation of a Teacher object
  @override
  String toString() {
    return super.toString() + ', Subject: $subject';
  }
}

// Define a function called createPeople to create instances of Person, Student, and Teacher classes
List<Person> createPeople() {
  List<Person> people = []; // List to store created Person objects

  // Create some instances of Person, Student, and Teacher classes
  people.add(Student('John', 20, 'Male', 12345));
  people.add(Student('Alice', 22, 'Female', 67890));
  people.add(Teacher('Dr. Smith', 35, 'Male', 'Mathematics'));
  people.add(Teacher('Prof. Johnson', 40, 'Female', 'Physics'));

  return people; // Return the list of created Person objects
}

// Define the main function to create people and print their details
void main() {
  List<Person> people = createPeople(); // Create a list of people
  for (var person in people) {
    print(person); // Print details of each person
  }
}
