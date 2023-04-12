#written by chatgpt lmfao
import random

num_list = []

for i in range(10):
    num_list.append(random.randint(1, 100))

sum_value = sum(num_list)

print("The list of numbers is:", num_list)
print("The sum of the numbers is:", sum_value)