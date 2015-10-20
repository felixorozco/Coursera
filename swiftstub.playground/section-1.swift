import Foundation


var numeros = 0...100

for n in numeros{
    if(n % 2 == 0){
        println( "\(n)  PAR!!!")
    }else{
        println(" \(n) IMPAR!!!")
    }
    
    if(n % 5 == 0){
        println(" \(n) BINGO!!!")
    }
    
    if n >= 30 && n <= 40{
       println(" \(n) VIVA SWIFT!!!")
    }

}
