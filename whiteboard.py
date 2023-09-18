# DESCRIPTION:
# An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.

# Example: (Input --> Output)

# "Dermatoglyphics" --> true "aba" --> false "moOse" --> false (ignore letter case)

# isIsogram "Dermatoglyphics" = true
# isIsogram "moose" = false
# isIsogram "aba" = false


def isIsogram(s: str) -> bool:
    s = s.lower()                               #0(N)
    return len(s) == len(set(s))                #O(1)

print(isIsogram("Dermatoglyphics"))
print(isIsogram("moose"))
print(isIsogram("aba"))
print(isIsogram("moOse"))






