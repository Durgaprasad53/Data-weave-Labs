%dw 2.0
output application/json
import * from dw::core::Strings
---
(payload filter ((item, index) ->item.age< 30) map ((i1, index) ->i1 mapObject ((value, key, index) ->
(upper(key)) : value))) map ((i2, index) ->i2 - "FIRSTNAME" ++ "STATUS" : if(i2.AGE < 30) "Active" else "" ) 


/*
[
  {
    "LASTNAME": "Gonsalves",
    "STATUS": "Active",
    "AGE": 28,
    "SALARY": 60000
  },
  {
    "LASTNAME": "Watson",
    "STATUS": "Active",
    "AGE": 27,
    "SALARY": 50000
  }
]
*/