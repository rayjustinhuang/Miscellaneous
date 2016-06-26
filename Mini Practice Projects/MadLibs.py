# KnightLab Mini Programming Projects
# From http://knightlab.northwestern.edu/2014/06/05/five-mini-programming-projects-for-the-python-beginner/

# Mini Project 3
# Mad Libs Generator
#
# The Goal: Inspired by Summer Son’s Mad Libs project with Javascript. The program will first prompt the user for a
# series of inputs a la Mad Libs. For example, a singular noun, an adjective, etc. Then, once all the information has
# been inputted, the program will take that data and place them into a premade story template. You’ll need prompts for
# user input, and to then print out the full story at the end with the input included.
#
# Concepts to keep in mind:
#
# Strings
# Variables
# Concatenation
# Print
# A pretty fun beginning project that gets you thinking about how to manipulate userinputted data. Compared to the
# prior projects, this project focuses far more on strings and concatenating. Have some fun coming up with some wacky
# stories for this!

name1 = input("Enter a random name: ")
name2 = input("Enter your name: ")
company = input("Enter a random company: ")


print("\n"
      "To: "+str.lower(name1)+"@"+str.lower(company)+".com\n"
      "From: "+str.lower(name2)+"@"+str.lower(company)+".com\n"
      "Subject: My crazy day\n"
      "\n"
      "Hey",name1+",\n"
      "\n"
      "You won't believe what happened to me today.\n")