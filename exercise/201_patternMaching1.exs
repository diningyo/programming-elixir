# 2.2 p.018 - exercise PatternMatching-1
a = [1, 2, 3] # match
a = 4 # match
4 = a # match
[a, b] = [ 1, 2, 3 ] # no match
a = [ [ 1, 2, 3 ] ] # match -> a = [ [ 1, 2, 3 ] ]
[a] = [ [ 1, 2, 3 ]] # match -> a = [ 1, 2, 3 ]
[[a]] = [ [ 1, 2, 3 ]] # no match
