import Foundation

struct Meal {
    var name: String
    var food: [Food]
}

struct Food {
    var name: String
    var description: String
}


    let firstBreakfastFood = Food(name: "Eggs", description: "Scrambled with bacon in a frying pan.")
    let secondBreakfastFood = Food(name: "Hashbrowns", description: "Cut potatoes then fry in oil until brown")
    let thirdBreakfastFood = Food(name: "Bacon", description: "Key food in all breakfast meals.")
    let breakfast = Meal(name: "Breakfast", food: [firstBreakfastFood, secondBreakfastFood, thirdBreakfastFood])
    
    let firstLunchFood = Food(name: "Sandwich", description: "Easy to fix. Always delicious")
    let secondLunchFood = Food(name: "Chips", description: "Put a few in the sandwhich for enhanced flavor")
    let thirdLunchFood = Food(name: "Apple", description: "An apple a day keeps the doctor away.")
    let lunch = Meal(name: "Lunch", food: [firstLunchFood, secondLunchFood, thirdLunchFood])
    
    let firstDinnerFood = Food(name: "Steak", description: "Everyone needs some good protein.")
    let secondDinnerFood = Food(name: "Potatoes", description: "Great addition to go along with steak.")
    let thirdDinnerFood = Food(name: "Brocolli", description: "Always finish out the food pyramid.")
    let dinner = Meal(name: "Dinner", food: [firstDinnerFood, secondDinnerFood, thirdDinnerFood])
    
class MealDataModel {
    
    static var shared = MealDataModel()
    private var meals: [Meal] = [breakfast, lunch, dinner]
    
    private init() { }
    
    func getMeals() -> [Meal] {
        return meals
    }
}

//var mealDataModel = MealDataModel()


