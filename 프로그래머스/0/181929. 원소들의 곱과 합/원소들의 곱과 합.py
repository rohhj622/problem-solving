import math
def solution(num_list):
    return 1 if math.prod(num_list) < math.pow(sum(num_list), 2) else 0