#! /usr/bin/env python3
# Written by Joshua Jordi

p = float(input("Enter the principle amount: "))
r = float(input("Enter the interest rate: ")) / 100
t = float(input("Enter length (in years): "))
total = 0
while t > 0:
    temp = p * (1 + (r * t))
    total = temp
    t -= 1
print(round(total, 2))
