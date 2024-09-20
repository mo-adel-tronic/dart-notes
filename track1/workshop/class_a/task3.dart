/*
You are given a list of integers a. A new list b is generated by rearranging the elements of a in the following way:

b[0] is equal to a[0];
b[1] is equal to the last element of a;
b[2] is equal to a[1];
b[3] is equal to the second-last element of a;
b[4] is equal to a[2];
b[5] is equal to the third-last element of a;
and so on.
Your task is to determine whether the new list b is sorted in strictly ascending order or not.

Here is how the process of generating the new list b works:

! Example

For a = [1, 3, 5, 6, 4, 2], the output should be solution(a) = true.

The new list b will look like [1, 2, 3, 4, 5, 6], which is in strictly ascending order, so the answer is true.

For a = [1, 4, 5, 6, 3], the output should be solution(a) = false.
0 => 4
1 => 3
2 => 2
The new list b will look like [1, 3, 4, 6, 5], which is not in strictly ascending order, so the answer is false.
*/