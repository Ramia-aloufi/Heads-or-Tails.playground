import UIKit

func tossCoin() ->  String{
   print("Tossing a Coin!")
    let Coin = ["Heads" , "Tails"]
    let ranndomCoin = Coin.randomElement()
    return ranndomCoin!
}

func tossMultipleCoins(num:Int) -> Double{
    var num1 = 1
    var Tails = 0.0
    var Heads = 0.0
    
    repeat{
    let myCoin =  tossCoin()
        if myCoin == "Heads"{
            Heads += 1
        }else{
            Tails += 1
        }
        num1 += 1
    }while num1 <= num
    print(Heads)
    print(Tails)
    
    return Heads / Double(num)
    
}

print(tossMultipleCoins(num: 5))
