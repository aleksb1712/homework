import UIKit

var greeting = "Hello, playground"
var isAdmin = false
var isDonat = true
var isModerator = true
var AdminMode = false
var proModer = false
print("______________________")
if isAdmin == true  && isDonat == true && isModerator == true {
    print("Super, you Admin")
   AdminMode = true
}else {
        print("Bad, you not admin")
        
}
print(AdminMode)
print("______________________")
if (isAdmin == true || isModerator == true) && isDonat == true {
    print("You proModer")
    proModer = true
    
} else {
    print("Bad")
}
print(proModer)
