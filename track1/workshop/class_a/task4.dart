/*
You are given a list of lists a. Your task is to group the lists a[i] by their mean values, so that lists with equal mean values are in the same group, and lists with different mean values are in different groups.

Each group should contain a set of indices (i, j, etc), such that the corresponding lists (a[i], a[j], etc) all have the same mean. Return the set of groups as an list of lists, where the indices within each group are sorted in ascending order, and the groups are sorted in ascending order of their minimum element.

! Example

a = [[3, 3, 4, 2],
     [4, 4],
     [4, 0, 3, 3],
     [2, 3],
     [3, 3, 3]]
the output should be

solution(a) = [[0, 4],
                 [1],
                 [2, 3]]
mean(a[0]) = (3 + 3 + 4 + 2) / 4 = 3;
mean(a[1]) = (4 + 4) / 2 = 4;
mean(a[2]) = (4 + 0 + 3 + 3) / 4 = 2.5;
mean(a[3]) = (2 + 3) / 2 = 2.5;
mean(a[4]) = (3 + 3 + 3) / 3 = 3.
There are three groups of means: those with mean 2.5, 3, and 4. And they form the following groups:

lists with indices 0 and 4 form a group with mean 3;
list with index 1 forms a group with mean 4;
lists with indices 2 and 3 form a group with mean 2.5.

! Note that neither

solution(a) = [[0, 4],
                 [2, 3],
                 [1]]
nor

solution(a) = [[0, 4],
                 [1],
                 [3, 2]]
? will be considered as a correct answer:

In the first case, the minimal element in the list at index 2 is 1, and it is less then the minimal element in the list at index 1, which is 2.
In the second case, the list at index 2 is not sorted in ascending order.
For

a = [[-5, 2, 3],
     [0, 0],
     [0],
     [-100, 100]]
the output should be

solution(a) = [[0, 1, 2, 3]]
The mean values of all of the lists are 0, so all of them are in the same group.
*/