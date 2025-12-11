/*A Meal should have the following properties:
 • Name: representing the name of the meal (e.g.,
 “Omelet").
 • Calories: automatically sets the calorie count
 based on the meal name:
 • Omelet: 250 calories
 • Salad: 150 calories
 • Pasta: 500 calories
 • Fruit: 100 calories
 • Sandwich: 300 calories
 The calorie value should be determined based on
 the dish name, and users cannot directly modify
 the calorie count.
 Meals should behave independently when copied
 or modified, so that changing one meal should not
 affect other meal instances*/
struct Meal {
    var name : String
    var calories : Int
    {
        switch name.lowercased()
        {
        case "omelet" : return 250
        case "salad" : return 150
        case "pasta" : return 500
        case "fruit" : return 100
        case "sandwich" : return 300
        default : return 0
        }
    }
}

/*A Day represents a single day in the meal planner
 and must have the following properties:
 • Day Of The Week: representing the day (e.g.,
 “Monday").
 • Meal Type: A Meal object (breakfast, lunch,
 dinner, snack)
 Days should behave independently when copied
 or modified,
 For example, if a user modifies Monday’s breakfast,
 it should not change Tuesday’s breakfast.*/

struct Day
{
    var dayOfTheWeek : String;
    var mealType : Meal;
}

let mondayBreakfast = Meal(name : "Omelet")
let monday = Day(dayOfTheWeek : "Monday", mealType : mondayBreakfast)

let tuesdayBreakfast = Meal(name : "Pasta")
let tuesday = Day(dayOfTheWeek : "Tuesday", mealType : tuesdayBreakfast)

print(tuesday.mealType);
print(monday.mealType);


/*
 A MealPlan represents a plan for a user’s meals
 for a specific day, with the following properties:
 • Name: representing the name of the meal plan
 (e.g., "Weekly Plan").
 • Day: A Day object representing the day for
 which the meal plan applies.
 • Is Active: indicating whether the meal plan is
 currently active.
 The meal plan must be shared across users, so
 any changes made to one instance of the meal
 plan should be visible to all users sharing the
 plan.
 The MealPlan class must have a method called
 activate() that sets the plan to active and
 prints "Meal plan activated!”.
 */

class MealPlan
{
    var name: String;
    var day: Day;
    var isActive: Bool;

    init(name : String, day : Day, isActive : Bool = false)
    {
        self.name = name;
        self.day = day;
        self.isActive = isActive;
    }

    func activate()
    {
        isActive = true;
        print("Meal plan activated! " + self.name)
    }
}

let weeklyPlan = MealPlan(name: "Weekly Plan", day: monday, isActive: true)
print(weeklyPlan.activate())
let monthyplan = MealPlan(name: "Monthly plan", day: tuesday, isActive: true)
print(monthyplan.activate() )

/* StandardMealPlan is-a MealPlan and adds
 the rule that the plan can only be activated
 once. Once deactivated, it cannot be
 reactivated.
 Override the activate() method to ensure
 that if a user tries to reactivate a deactivated
 plan, the message "This meal plan can
 only be activated once." is printed */
class StandardmealPlan : MealPlan
{
    override
    func activate()
    {
        if(isActive)
        {
            print("This meal plan can only be activated once.")
            return;
        }
        isActive = true;
        print("Meal plan activated!");
//        isActive  = false;
    }
}


/*
 PremiumMealPlan is-a MealPlan and allows
 for multiple activations and deactivations.
 Override the activate() method to allow
 the plan to be activated multiple times. Each
 time it is activated, print "Premium meal
 plan activated!"
 */
class PremiumMealPlan : MealPlan
{
    override
    func activate()
    {
        isActive = true;
        print("Premium meal plan activated!");
    }
}
/*Create Meal instances for breakfast, lunch,
 dinner, and snack.
 • Create a Day instance that uses these meals for
 a specific day (e.g., "Monday").
 • Create instances of both StandardMealPlan
 and PremiumMealPlan, and demonstrate how
 the activate() method behaves for each.
 • Modify a MealPlan and show how changes
 are visible to all references to the same plan.*/
let breakfast = Meal(name: "Omelet")
let lunch = Meal(name: "Salad")
let dinner = Meal(name: "Pasta")
let snack = Meal(name: "Fruit")

print("Breakfast: \(breakfast.name), calories: \(breakfast.calories)")
print("Lunch: \(lunch.name), calories: \(lunch.calories)")

let standardPlan = StandardmealPlan(name: "Standard Plan", day: monday)
let premiumPlan = PremiumMealPlan(name: "Premium Plan", day: monday)

standardPlan.activate()
standardPlan.activate()

premiumPlan.activate()
premiumPlan.isActive = false
premiumPlan.activate()
