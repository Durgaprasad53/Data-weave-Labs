%dw 2.0
output application/json 
var a= max(payload groupBy ((character, index) -> character) pluck ((value, key, index) -> sizeOf(value)))
---
{
    "char": a,
    "repeat": payload groupBy ((c1, index) ->c1) pluck ((v1, key, index) ->if(sizeOf(v1) == a) (key) else "") joinBy  ""
}

/*
{
  "char": 3,
  "repeat": "l"
}
*/