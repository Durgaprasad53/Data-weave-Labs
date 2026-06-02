%dw 2.0
output application/json
var a=[0 to payload] flatMap ((item, index) ->[0] ++ [1]) 
var b=[]
---
(2 to payload) reduce((item,acc=[0,1])->acc ++ [acc[-1] + acc[-2]])
// (a ++ [sum(a)]) map ((i1, index) ->i1)
/*
[0,1,1,2,3,5]
*/