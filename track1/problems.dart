/*
Suppose you are a teacher planning a field trip for a group of students. You want to distribute the students into equal-sized groups for transportation purposes, ensuring that each group has the same number of students and that no student is left out or added to another group.

Solution:

To distribute the students into equal-sized groups, you need to find the largest possible number of students that can be evenly divided among all the groups. This number is the greatest common divisor (GCD) of the total number of students and the desired number of groups.

Let's say you have 36 students and you want to divide them into groups for a field trip. You have two options for the number of groups: 4 groups or 6 groups.

If you want to divide the students into 4 groups:

GCD(36, 4) = 4
Each group will have 
36÷4=9 students.
If you want to divide the students into 6 groups:
GCD(36, 6) = 6
Each group will have 
36÷6=6 students.
*/



/*
Suppose you have three tasks: Task A, Task B, and Task C. Each task needs to be performed periodically, with intervals of 4 days, 6 days, and 8 days respectively. You want to find the least common multiple (LCM) of these intervals to determine the smallest period after which all tasks will align and need to be performed simultaneously.


Solution:
To find the LCM of the intervals (4, 6, and 8), we can use the following steps:

List the multiples of each interval until we find a common multiple.

Multiples of 4: 4, 8, 12, 16, 20, 24, ...
Multiples of 6: 6, 12, 18, 24, ...
Multiples of 8: 8, 16, 24, ...
Identify the smallest common multiple, which is the LCM.

The LCM of 4, 6, and 8 is 24.
Therefore, after 24 days, all tasks (A, B, and C) will align and need to be performed simultaneously. This is the least amount of time it takes for all tasks to synchronize.


LCM (a,b) = (a*b) / GCD(a,b)
LCM(a,b,c)=LCM(LCM(a,b),c)
*/
void lcm() {
  int a = 4;
  int b = 6;
  int c = 8;
  var lcmAB = (a*b) ~/ a.gcd(b);
  var lcmC = (lcmAB*c) / lcmAB.gcd(c);
  print(lcmC); // 24
}