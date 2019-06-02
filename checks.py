#!/usr/bin/env python3

import random
import subprocess
import math
import statistics
from pprint import pprint

MARGIN = 200

def test_ep(seed, just_num_of_defeats, goodness):
    # My code

    answer_sp = subprocess.Popen(['./ep'], stdout=subprocess.PIPE, stdin=subprocess.PIPE)
    answer = answer_sp.communicate(f"{seed}".encode())[0].decode().strip()

    answer_list = list(map(lambda x: x.strip().split(), answer.split('\n')))

    for i in list(answer_list):
        for j in list(i):
            if j != '0.5':
                i.pop(0)
            else:
                break
        if i == []:
            answer_list.pop(0)
        if j == '0.5':
            break

    answer_list = answer_list[0:15]

    # Students code

    correcting_sp = subprocess.Popen(['./teste'], stdout=subprocess.PIPE, stdin=subprocess.PIPE)
    correcting = correcting_sp.communicate(f"{seed}".encode())[0].decode().strip()

    correcting_list = list(map(lambda x: x.strip().split(), correcting.split('\n')))

    for i in list(correcting_list):
        for j in list(i):
            if j != '0.5':
                i.pop(0)
            else:
                break
        if i == []:
            correcting_list.pop(0)
        if j == '0.5':
            break

    correcting_list = correcting_list[0:15]
        
    median_list = []
    for i in range(len(correcting_list)):
        median_list.append(int(answer_list[i][1]) - int(correcting_list[i][1]))

    median = statistics.median(median_list)

    tests_check = []
    for i in range(len(correcting_list)):
        defeats = int(correcting_list[i][1])
        tests_check.append({'first' : False, 'second' : False, 'final' : False})

        compare = int(answer_list[i][1])
        
        if answer_list[i][0] == '7.5':
            if compare - MARGIN <= defeats <= compare + MARGIN:
                tests_check[i]['first'] = True
        else:
            if  (compare - median) - MARGIN <= defeats <= (compare - median) + MARGIN:
                tests_check[i]['first'] = True

        wanted_num_of_caracteres = math.floor((100 * defeats / 10000 + 0.5))

        real_number_of_characters = len(correcting_list[i][2])

        if wanted_num_of_caracteres == real_number_of_characters:
            tests_check[i]['second'] = True

        if tests_check[i]['first'] and tests_check[i]['second']:
            tests_check[i]['final'] = True

    passed_list = []
    if just_num_of_defeats:
        for i in range(len(tests_check)):
            passed_list.append(tests_check[i]['first'])
    else:
        for i in range(len(tests_check)):
            passed_list.append(tests_check[i]['final'])

    passed_number = 0
    for i in passed_list:
        if i == True:
            passed_number += 1

    passed = True
    if goodness == 0 and passed_number == 15:
        passed = True
    elif goodness == 1 and passed_number > 12:
        passed = True
    elif goodness == 2 and passed_number > 10:
        passed = True
    else:
        passed = False
    
    return passed


just_num_of_defeats = bool(input("Just number of defeats? [True/False]: "))
goodness = int(input("Goodness? [0/1/2]: "))

for i in range(100):

    seed = random.randint(1, 2**31-1)
    passed = test_ep(seed, just_num_of_defeats, goodness)
    # passed = test_ep(seed, False, 0)
    
    if passed:
        print(f'[OK] Teste {i + 1}')
    else:
        print(f'[FALHA] Teste {i + 1}')
        




