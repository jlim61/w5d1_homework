# How to solve a problem:
    # Figure out what the input and its type are
    # Set up a function
    # Figure out what the output and its type are
    # Gather Your Knowledge
    # Gathers Your Constraints (Not always necessary) 
    # Determine a Logical way to solve the problem
        #Write each step out English
        #Write each step out in Python-esse (sudo-code)
    # Invoke and Test Your Function

'''
DESCRIPTION:
An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.

Example: (Input --> Output)

"Dermatoglyphics" --> true "aba" --> false "moOse" --> false (ignore letter case)

isIsogram "Dermatoglyphics" = true
isIsogram "moose" = false
isIsogram "aba" = false
'''

# empty string = isogram
# ignore letter casing
# input is a string, my output is a string

# def function(string)
# iterate through the letters (for loop)
# if the letter we are looking at is the same as the one in front or back of it, it's not isogram
# if the letter is the same as any other letter in the string, it's not isogram

test1 = ''
test2 = "Dermatoglyphics"
test3 = "moose"
test4 = "aba"

def find_isogram(astring):
    # print(astring)
    # print(list(astring.lower()))
    letter_check = []
    astring_list = list(astring.lower())
    if astring == '':
        return f'{astring}', False
    for letter in astring_list:
        # print(letter)
        if letter in letter_check:
            return f'{astring}', False
        else:
            letter_check.append(letter)
            # print(letter_check)
    return f'{astring}', True
        

print(find_isogram(test1))
print(find_isogram(test2))
print(find_isogram(test3))
print(find_isogram(test4))


# set version
# a set will remove any repeating characters. It only keeps unique characters which it makes it great for filtering things out like this

def find_isogram_set(astring):
    astring_set = set(astring)
    if astring == '':
        return f'{astring}', False
    if len(astring_set) < len(astring):
        return f'{astring}', False
    else:
        return f'{astring}', True
print(find_isogram_set(test1))
print(find_isogram_set(test2))
print(find_isogram_set(test3))
print(find_isogram_set(test4))