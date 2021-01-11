# 2.4 p.020 - exercise PatternMatching-3
# rerequirements : a is bound by 2.
a = 2
[ a, b, a ] = [ 1, 2, 3 ] # no match

a = 2
[ a, b, a ] = [ 1, 1, 2 ] # no match

a = 2
a = 1 # match

a = 2
^a = 2 # match

a = 2
^a = 1 # no match

a = 2
^a = 2 - a # no match
