/* 
You are given a list of integers numbers and two integers left and right (List numbers, int left, int right).
Your task is to calculate a boolean list result, where result[i] = true if there exists an integer x, such that numbers[i] = (i + 1) * x and left ≤ x ≤ right. Otherwise, result[i] should be set to false.

! Example

For numbers = [8, 5, 6, 16, 5], left = 1, and right = 3, the output should be solution(numbers, left, right) = [false, false, true, false, true].

For numbers[0] = 8, we need to find a value of x such that 1 * x = 8, but the only value that would work is x = 8 which doesn't satisfy the boundaries 1 ≤ x ≤ 3, so result[0] = false.
For numbers[1] = 5, we need to find a value of x such that 2 * x = 5, but there is no integer value that would satisfy this equation, so result[1] = false.
For numbers[2] = 6, we can choose x = 2 because 3 * 2 = 6 and 1 ≤ 2 ≤ 3, so result[2] = true.
For numbers[3] = 16, there is no an integer 1 ≤ x ≤ 3, such that 4 * x = 16, so result[3] = false.
For numbers[4] = 5, we can choose x = 1 because 5 * 1 = 5 and 1 ≤ 1 ≤ 3, so result[4] = true.

! Input/Output

? [input] list.integer numbers

A list of integers.

Guaranteed constraints:
1 ≤ numbers.length ≤ 100,
1 ≤ numbers[i] ≤ 106.

? [input] integer left

An integer representing the lower bound for x.

Guaranteed constraints:
1 ≤ left ≤ 104.

? [input] integer right

An integer representing the upper bound for x.

Guaranteed constraints:
1 ≤ left ≤ right ≤ 104.

? [output] list.boolean

A boolean list result described above.


*/

List<bool> solution(List<int> numbers,int left,int right) {
    return numbers.asMap().entries.map((item) {
        bool checker = false;
        for(int x = left; x <= right; x++) {
            int equation = (item.key+1) * x;
            if(item.value == equation) {
                checker = true;
            }
        }
        return checker;
    }).toList();
}

