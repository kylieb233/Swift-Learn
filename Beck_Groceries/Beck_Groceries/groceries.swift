//
//  groceries.swift
//  Beck_Groceries
//
//  Created by Kylie beck on 12/6/24.
//

import Foundation
import UIKit

struct Item {
    var itemName:String?
    var image:UIImage?
    var itemPrice:Double?
    var itemExpiry:String?
    var itemDescription:String?
    var itemQuantity:Int?
    var itemOrigin:String?
    

    
}

let Dairy: [Item] = [
    Item(itemName: "Milk", image: UIImage(named: "milk")!, itemPrice: 2.99, itemExpiry: "2024-12-13", itemDescription: "A white liquid that comes from cows and provides you with protein.", itemQuantity: 30, itemOrigin: "Arkansas"),
    Item(itemName: "Cheese", image: UIImage(named: "cheese")!, itemPrice: 3.66, itemExpiry: "You can put this in tacos, or anything to add an extra cheese favor.", itemQuantity: 10, itemOrigin: "Ohio"),
    
    Item(itemName: "Butter", image: UIImage(named: "butter")!, itemPrice: 2.00, itemExpiry: "2024-12-10", itemDescription: "Rich and creamy butter, ideal for baking, cooking, or spreading on toast.", itemQuantity: 25, itemOrigin: "Minnesota"),
    Item(itemName: "Yogurt", image: UIImage(named: "yogurt")!, itemPrice: 1.20, itemExpiry: "2024-12-18", itemDescription: "Smooth and creamy yogurt, available in various flavors, perfect for breakfast or desserts.", itemQuantity: 30, itemOrigin: "Texas"),
    Item(itemName: "Cream", image: UIImage(named: "cream")!, itemPrice: 2.50, itemExpiry: "2024-12-12", itemDescription: "Rich heavy cream, perfect for making sauces, whipped cream, or adding to coffee.", itemQuantity: 15, itemOrigin: "California"),
    Item(itemName: "Cottage Cheese", image: UIImage(named: "cottage_cheese")!, itemPrice: 1.80, itemExpiry: "2024-12-22", itemDescription: "Fresh cottage cheese, light and creamy, great for snacks or adding to salads.", itemQuantity: 12, itemOrigin: "New York"),
    Item(itemName: "Sour Cream", image: UIImage(named: "sour_cream")!, itemPrice: 1.50, itemExpiry: "2024-12-20", itemDescription: "Tangy and creamy sour cream, perfect for dipping, baking, or topping baked potatoes.", itemQuantity: 18, itemOrigin: "Wisconsin"),
    Item(itemName: "Ice Cream", image: UIImage(named: "ice_cream")!, itemPrice: 4.00, itemExpiry: "2024-12-25", itemDescription: "Decadent and rich ice cream available in a variety of flavors for a sweet treat.", itemQuantity: 8, itemOrigin: "California"),
    Item(itemName: "Ricotta Cheese", image: UIImage(named: "ricotta")!, itemPrice: 2.80, itemExpiry: "2024-12-17", itemDescription: "Light and creamy ricotta cheese, perfect for lasagna, cannoli, or sweet dishes.", itemQuantity: 10, itemOrigin: "Italy"),
    Item(itemName: "Milkshake", image: UIImage(named: "milkshake")!, itemPrice: 3.50, itemExpiry: "2024-12-08", itemDescription: "Delicious milkshakes made with creamy milk and ice cream, available in various flavors.", itemQuantity: 5, itemOrigin: "California"),

    //Add more Items as needed.
]

let Fruit: [Item] = [
    Item(itemName: "Apple", image: UIImage(named: "apple")!, itemPrice: 0.99, itemExpiry: "2024-12-12", itemDescription: "A wonderful red fruit with the delicious taste.", itemQuantity: 10, itemOrigin: "Nebraska"),
    Item(itemName: "Watermelon", image: UIImage(named: "watermelon")!, itemPrice: 1.00, itemExpiry: "2024-12-12", itemDescription: "Any description", itemQuantity: 12, itemOrigin: "Maryland"),
    Item(itemName: "Green Apple", image: UIImage(named: "green apple")!, itemPrice: 0.90, itemExpiry: "2024-12-10", itemDescription: "Crisp and juicy, apples are perfect for snacking or making pies.", itemQuantity: 20, itemOrigin: "Washington"),
    Item(itemName: "Banana", image: UIImage(named: "banana")!, itemPrice: 0.25, itemExpiry: "2024-12-05", itemDescription: "Bananas are a great source of potassium and make a perfect snack or addition to smoothies.", itemQuantity: 50, itemOrigin: "Costa Rica"),
    Item(itemName: "Strawberry", image: UIImage(named: "strawberry")!, itemPrice: 1.50, itemExpiry: "2024-12-15", itemDescription: "Sweet and tangy strawberries are perfect for desserts, smoothies, and salads.", itemQuantity: 18, itemOrigin: "California"),
    Item(itemName: "Orange", image: UIImage(named: "orange")!, itemPrice: 0.60, itemExpiry: "2024-12-01", itemDescription: "Oranges are packed with vitamin C and are perfect for juicing or eating fresh.", itemQuantity: 25, itemOrigin: "Florida"),
    Item(itemName: "Pineapple", image: UIImage(named: "pineapple")!, itemPrice: 2.00, itemExpiry: "2024-12-20", itemDescription: "Pineapples are tropical fruits with a tangy and sweet flavor, great for fruit salads or grilling.", itemQuantity: 10, itemOrigin: "Hawaii"),
    Item(itemName: "Mango", image: UIImage(named: "mango")!, itemPrice: 1.25, itemExpiry: "2024-12-12", itemDescription: "Mangoes are sweet and juicy, perfect for smoothies, salsas, or just eating fresh.", itemQuantity: 14, itemOrigin: "Mexico"),
    Item(itemName: "Grapes", image: UIImage(named: "grapes")!, itemPrice: 2.50, itemExpiry: "2024-12-08", itemDescription: "Fresh grapes are sweet and perfect for snacking or adding to fruit salads.", itemQuantity: 30, itemOrigin: "California"),
    Item(itemName: "Watermelon", image: UIImage(named: "watermelon")!, itemPrice: 3.00, itemExpiry: "2024-12-18", itemDescription: "Watermelons are refreshing, juicy fruits that are perfect for hot weather or fruit salads.", itemQuantity: 5, itemOrigin: "Texas")
    

    //Add more Items as needed.
]

let Vegetable: [Item] = [
    Item(itemName: "Corn", image: UIImage(named: "corn")!, itemPrice: 1.00, itemExpiry: "2024-12-17", itemDescription: "A yellow vegetable that completes any meal during the summer", itemQuantity: 18, itemOrigin: "Iowa"),
    Item(itemName: "Red Pepper", image: UIImage(named: "red pepper")!, itemPrice: 0.45, itemExpiry: "2024-09-12", itemDescription: "A red pepper is good for any meal especially when you want to make stirfry!", itemQuantity: 12, itemOrigin: "Texas"),
    Item(itemName: "Carrot", image: UIImage(named: "carrot")!, itemPrice: 0.30, itemExpiry: "2024-10-15", itemDescription: "A carrot is crunchy and sweet, perfect for salads, soups, and stir-fries.", itemQuantity: 15, itemOrigin: "California"),
    Item(itemName: "Broccoli", image: UIImage(named: "broccoli")!, itemPrice: 0.75, itemExpiry: "2024-09-25", itemDescription: "Broccoli is high in vitamins and a great addition to any meal, especially steamed or roasted.", itemQuantity: 8, itemOrigin: "Oregon"),
    Item(itemName: "Spinach", image: UIImage(named: "spinach")!, itemPrice: 0.60, itemExpiry: "2024-09-30", itemDescription: "Fresh spinach is packed with nutrients and is perfect for salads, smoothies, and sautéed dishes.", itemQuantity: 20, itemOrigin: "Michigan"),
    Item(itemName: "Zucchini", image: UIImage(named: "zucchini")!, itemPrice: 0.50, itemExpiry: "2024-10-05", itemDescription: "Zucchini is a versatile vegetable for grilling, stir-fries, or adding to baked goods.", itemQuantity: 10, itemOrigin: "Florida"),
    Item(itemName: "Cucumber", image: UIImage(named: "cucumber")!, itemPrice: 0.40, itemExpiry: "2024-10-02", itemDescription: "Cucumbers are refreshing and crisp, perfect for salads or as a healthy snack.", itemQuantity: 18, itemOrigin: "Texas"),
    Item(itemName: "Tomato", image: UIImage(named: "tomato")!, itemPrice: 0.80, itemExpiry: "2024-09-28", itemDescription: "Fresh tomatoes are sweet and juicy, perfect for sauces, sandwiches, and salads.", itemQuantity: 25, itemOrigin: "California"),
    Item(itemName: "Bell Pepper", image: UIImage(named: "bell_pepper")!, itemPrice: 0.90, itemExpiry: "2024-09-20", itemDescription: "Bell peppers add a vibrant color and sweet crunch to any dish, from stir-fries to salads.", itemQuantity: 12, itemOrigin: "Florida"),
    Item(itemName: "Eggplant", image: UIImage(named: "eggplant")!, itemPrice: 1.10, itemExpiry: "2024-09-18", itemDescription: "Eggplant has a unique texture and flavor, great for grilling or adding to Mediterranean dishes.", itemQuantity: 7, itemOrigin: "California")

    //Add more Items as needed.
]

let Meat: [Item] = [
    Item(itemName: "Chicken Breast", image: UIImage(named: "chicken_breast")!, itemPrice: 5.00, itemExpiry: "2024-12-10", itemDescription: "Tender, lean chicken breast, perfect for grilling, baking, or making chicken salads.", itemQuantity: 20, itemOrigin: "Georgia"),
    Item(itemName: "Ground Beef", image: UIImage(named: "ground_beef")!, itemPrice: 4.50, itemExpiry: "2024-12-12", itemDescription: "Fresh ground beef, ideal for making burgers, meatballs, or pasta sauces.", itemQuantity: 15, itemOrigin: "Texas"),
    Item(itemName: "Pork Chops", image: UIImage(named: "pork_chops")!, itemPrice: 6.00, itemExpiry: "2024-12-15", itemDescription: "Juicy and tender pork chops, perfect for grilling, roasting, or pan-frying.", itemQuantity: 10, itemOrigin: "Iowa"),
    Item(itemName: "Salmon", image: UIImage(named: "salmon")!, itemPrice: 8.00, itemExpiry: "2024-12-20", itemDescription: "Fresh and flaky salmon fillets, great for grilling, baking, or pan-searing.", itemQuantity: 8, itemOrigin: "Alaska"),
    Item(itemName: "Bacon", image: UIImage(named: "bacon")!, itemPrice: 3.50, itemExpiry: "2024-12-18", itemDescription: "Crispy, smoky bacon, perfect for breakfast, sandwiches, or topping salads.", itemQuantity: 25, itemOrigin: "North Carolina"),
    Item(itemName: "Lamb Chops", image: UIImage(named: "lamb_chops")!, itemPrice: 9.50, itemExpiry: "2024-12-25", itemDescription: "Tender lamb chops, great for grilling or roasting with a garlic herb marinade.", itemQuantity: 6, itemOrigin: "New Zealand"),
    Item(itemName: "Beef Steaks", image: UIImage(named: "beef_steaks")!, itemPrice: 7.50, itemExpiry: "2024-12-22", itemDescription: "Premium cuts of beef steak, perfect for grilling, pan-searing, or broiling.", itemQuantity: 12, itemOrigin: "Colorado"),
    Item(itemName: "Turkey Breast", image: UIImage(named: "turkey_breast")!, itemPrice: 5.80, itemExpiry: "2024-12-12", itemDescription: "Lean and tender turkey breast, ideal for sandwiches, salads, or roasting.", itemQuantity: 18, itemOrigin: "Minnesota"),
    Item(itemName: "Duck Breast", image: UIImage(named: "duck_breast")!, itemPrice: 10.00, itemExpiry: "2024-12-08", itemDescription: "Rich and flavorful duck breast, perfect for roasting, grilling, or preparing in a gourmet dish.", itemQuantity: 4, itemOrigin: "France"),
    Item(itemName: "Sausages", image: UIImage(named: "sausages")!, itemPrice: 3.00, itemExpiry: "2024-12-05", itemDescription: "Delicious sausages, available in various flavors, great for grilling or adding to stews.", itemQuantity: 30, itemOrigin: "Germany"),

    
]

let Pastries: [Item] = [
    Item(itemName: "Croissant", image: UIImage(named: "croissant")!, itemPrice: 2.50, itemExpiry: "2024-12-10", itemDescription: "Flaky and buttery croissants, perfect for breakfast or a light snack.", itemQuantity: 15, itemOrigin: "France"),
    Item(itemName: "Danish Pastry", image: UIImage(named: "danish_pastry")!, itemPrice: 3.00, itemExpiry: "2024-12-12", itemDescription: "Sweet and flaky Danish pastries filled with fruit or cream cheese, perfect for dessert.", itemQuantity: 20, itemOrigin: "Denmark"),
    Item(itemName: "Eclair", image: UIImage(named: "eclair")!, itemPrice: 2.80, itemExpiry: "2024-12-15", itemDescription: "Rich eclairs filled with creamy custard and topped with chocolate glaze.", itemQuantity: 18, itemOrigin: "France"),
    Item(itemName: "Apple Turnover", image: UIImage(named: "apple_turnover")!, itemPrice: 2.00, itemExpiry: "2024-12-18", itemDescription: "Buttery puff pastry filled with sweet apple filling, perfect for a sweet snack.", itemQuantity: 25, itemOrigin: "USA"),
    Item(itemName: "Pain au Chocolat", image: UIImage(named: "pain_au_chocolat")!, itemPrice: 2.75, itemExpiry: "2024-12-05", itemDescription: "A classic French pastry with layers of buttery dough and rich chocolate filling.", itemQuantity: 12, itemOrigin: "France"),
    Item(itemName: "Cinnamon Roll", image: UIImage(named: "cinnamon_roll")!, itemPrice: 3.50, itemExpiry: "2024-12-20", itemDescription: "Soft and gooey cinnamon rolls, glazed with a sweet icing, perfect for breakfast.", itemQuantity: 30, itemOrigin: "USA"),
    Item(itemName: "Berry Tart", image: UIImage(named: "berry_tart")!, itemPrice: 4.00, itemExpiry: "2024-12-22", itemDescription: "Delicious berry tarts with a buttery crust and fresh mixed berries on top.", itemQuantity: 10, itemOrigin: "France"),
    Item(itemName: "Madeleine", image: UIImage(named: "madeleine")!, itemPrice: 1.80, itemExpiry: "2024-12-25", itemDescription: "Soft and delicate French madeleine cookies, perfect with tea or coffee.", itemQuantity: 15, itemOrigin: "France"),
    Item(itemName: "Profiterole", image: UIImage(named: "profiterole")!, itemPrice: 3.20, itemExpiry: "2024-12-08", itemDescription: "Choux pastry filled with cream and topped with chocolate or caramel sauce.", itemQuantity: 8, itemOrigin: "France"),
    Item(itemName: "Baklava", image: UIImage(named: "baklava")!, itemPrice: 3.50, itemExpiry: "2024-12-18", itemDescription: "Rich and flaky baklava made with layers of filo dough, honey, and nuts.", itemQuantity: 12, itemOrigin: "Turkey"),

]


// Add more categories.......


// Array to store categories along with their respective item lists to retrieve data in collection view.
let allCategories: [[Item]] = [Dairy,Fruit,Vegetable, Pastries, Meat]


// Array to store all category names to display in the table view and as title in the second view.
let categoryNames: [String] = ["Dairy","Fruit","Vegetable","Meat","Pastries"]
    

