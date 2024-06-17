//
//  JSONTestCases.swift
//  MealDBDTO
//
//  Created by Scott Anguish on 6/17/24.
//

struct JSONTestCases {
   static var passingJSON: String = """
{
    "idMeal": "52958",
    "strMeal": "Peanut Butter Cookies",
    "strCategory": "Dessert",
    "strInstructions": "Preheat oven to 350 degrees.",
    "strMealThumb": "https:\\/\\/www.themealdb.com\\/images\\/media\\/meals\\/1544384070.jpg",
    "strTags": "Breakfast,UnHealthy,BBQ",
    "strIngredient1": "Peanut Butter",
    "strIngredient2": "Sugar",
    "strIngredient3": "Egg",
    "strIngredient4": "",
    "strMeasure1": "1 cup",
    "strMeasure2": "1\\/2 cup",
    "strMeasure3": "1",
    "strMeasure4": "",
}
"""

    static var missingMeal: String = """
{
    "idMeal": "52958",
    "strCategory": "Dessert",
    "strInstructions": "Preheat oven to 350 degrees.",
    "strMealThumb": "https:\\/\\/www.themealdb.com\\/images\\/media\\/meals\\/1544384070.jpg",
    "strTags": "Breakfast,UnHealthy,BBQ",
    "strIngredient1": "Peanut Butter",
    "strIngredient2": "Sugar",
    "strIngredient3": "Egg",
    "strIngredient4": "",
    "strMeasure1": "1 cup",
    "strMeasure2": "1\\/2 cup",
    "strMeasure3": "1",
    "strMeasure4": "",
}
"""

    static var malformedTags: String = """
{
    "idMeal": "52958",
    "strMeal": "Peanut Butter Cookies",
    "strCategory": "Dessert",
    "strInstructions": "Preheat oven to 350 degrees.",
    "strMealThumb": "https:\\/\\/www.themealdb.com\\/images\\/media\\/meals\\/1544384070.jpg",
    "strTags": ",UnHealthy,BBQ",
    "strIngredient1": "Peanut Butter",
    "strIngredient2": "Sugar",
    "strIngredient3": "Egg",
    "strIngredient4": "",
    "strMeasure1": "1 cup",
    "strMeasure2": "1\\/2 cup",
    "strMeasure3": "1",
    "strMeasure4": "",
}
"""

}
