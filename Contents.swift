//: Playground - noun: a place where people can play

import UIKit

/* order = burger, side, drink
 burger = bun, patty, topping, condiment
 */

enum Topping : String, CustomStringConvertible {
    case Lettuce
    case Tomato
    case Onion
    case Pickle
    case Bacon
    case Cheese
    
    var description: String {
        return self.rawValue
    }
}

enum Condiment : String, CustomStringConvertible {
    case Mayo
    case Mustard
    case Ketchup
    
    var description: String {
        return self.rawValue
    }
}

enum Bun {
    case White
    case Wheat
    case Sesame
    case Pretzel
}

enum Patty {
    case Beef
    case Turkey
    case Bison
    case Tofu
}

enum Side {
    case Fries
    case SweetPotatoFries
    case Chips
}

enum Drink {
    case Coke
    case DrPepper
    case SweetTea
    case Fresca
}

struct Burger {
    var bun: Bun
    var patty: Patty
    var toppings: [Topping]
    var condiments: [Condiment]
    
    var description: String {
        var str = "Bun: \(bun)\n"
            + "Patty: \(patty)\n"
            + "Toppings: \n"
            
        for top in toppings {
            str = str + "\t\(top)\n"
        }
        str = str + "Condiments: \n"
        for con in condiments {
            str = str + "\t\(con)\n"
        }
        
        return str
    }
}

struct Order : CustomStringConvertible {
    var burger: Burger
    var side: Side
    var drink: Drink
    
    var description: String {
        return "Your order\n"
            + "Drink: \(drink) \n"
            + "Side: \(side) \n"
            + "Burger:\n\(burger.description)"
    }
}


var burger = Burger(bun: Bun.Wheat, patty: Patty.Beef, toppings: [Topping.Bacon, Topping.Lettuce], condiments: [Condiment.Ketchup])

var order = Order (burger: burger, side: Side.Fries, drink: Drink.SweetTea)


print(order)
print("***")

print ("Your order")
print("Burger")
print("Bun: ", order.burger.bun)
print("Patty: ", order.burger.patty)
print ("Toppings: ", order.burger.toppings)
print ("Condiments", order.burger.condiments)
print ("Side: ", order.side)
print ("Drink: ", order.drink)

