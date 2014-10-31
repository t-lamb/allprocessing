// Exercise 5-1: Consider a grading system where numbers 
// are turned into letters. Fill in the blanks in the 
// following code to complete the boolean expression.

float grade = random(0,100);

//added this line to see the grade
println(grade);

if (grade>=90) {
  println("Assign letter grade A.");
} else if (grade>=80) { // In one conditional statement, you can only ever have one if and one else. However, you can have as many else if's as you like!
  println ("Assign letter grade B.");
} else if (grade>=70) {
  println ("Assign letter grade C.");
} else if (grade>=60) {
  println ("Assign letter grade D.");
} else {
  println ("Assign letter grade F.");
}
