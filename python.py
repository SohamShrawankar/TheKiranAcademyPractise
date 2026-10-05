""" dictionaries practise """ 

my_dict = {"name":"soham" , "city":"nagpur" , "phone":"937147763"}
my_dict["phone"] = 9307147763
my_dict["name"] = "purva"
my_dict["occupation"] = "student"
my_dict.pop("city")
print(my_dict)

keys = my_dict.keys()
print(keys)

""" ------------------Linear Search----------------""" 

def binary_search(array, target):
    start = 0
    end = len(array) - 1

    while start <= end:
        mid = (start + end) // 2

        if array[mid] == target:
            return mid
        elif target > array[mid]:
            start = mid + 1
        else:
            end = mid - 1

    return -1


array = sorted(map(int, input("Enter numbers separated by spaces: ").split()))
target = int(input("Enter the element to search: "))

result = binary_search(array, target)

if result != -1:
    print("Element found at index:", result)
else:
    print("Element not found")
