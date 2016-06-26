# KnightLab Mini Programming Projects
# From http://knightlab.northwestern.edu/2014/06/05/five-mini-programming-projects-for-the-python-beginner/

# Mini Project 2
# Guess the Number

# The Goal: Similar to the first project, this project also uses the random module in Python. The program will
# first randomly generate a number unknown to the user. The user needs to guess what that number is. (In other
# words, the user needs to be able to input information.) If the user’s guess is wrong, the program should return
# some sort of indication as to how wrong (e.g. The number is too high or too low). If the user guesses correctly,
# a positive indication should appear. You’ll need functions to check if the user input is an actual number, to see
# the difference between the inputted number and the randomly generated numbers, and to then compare the numbers.
#
# Concepts to keep in mind:
#
# Random function
# Variables
# Integers
# Input/Output
# Print
# While loops
# If/Else statements

# Jumping off the first project, this project continues to build up the base knowledge and introduces user-inputted
# data at its very simplest. With user input, we start to get into a little bit of variability.

from random import randint

print("Guess what number I'm thinking of!\n")

correct = randint(1,100)
userval = int(input("Enter your guess: "))
#print(correct)

while userval != correct:
    if (type(userval) is int) and userval < correct:
        print("Your guess is too low!")
    elif (type(userval) is int) and userval > correct:
        print("Your guess is too high!")
    else:
        print("Be sure to enter a natural number from 1 to 100!")

    userval = int(input("\nGuess again: "))

    if userval == correct:
        print("You got it! Thanks for playing!")


