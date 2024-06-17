//
//  RecipeDetailTests.swift
//  MealDBDTOTests
//
//  Created by Scott Anguish on 6/17/24.
//

import Testing

struct RecipeDetailTests {

    @Test("DTO Conversion - All Fields") 
    func testRecipeDetailFromDTOAllFields() async throws {
        let testRecipeDTO = try createRecipeDTO(JSON: JSONTestCases.passingJSON)
        let recipeDetail = RecipeDetail(fromDTO: testRecipeDTO!)

        #expect(recipeDetail.id == "52958")
        #expect(recipeDetail.name == "Peanut Butter Cookies")
        #expect(recipeDetail.category == "Dessert")
        #expect(recipeDetail.instructions == "Preheat oven to 350 degrees.")
        #expect(recipeDetail.mealThumbnailURL?.absoluteString == "https://www.themealdb.com/images/media/meals/1544384070.jpg")
        #expect(recipeDetail.keywords == ["Breakfast", "UnHealthy", "BBQ"])
        #expect(recipeDetail.ingredients.count == 3)
        #expect(recipeDetail.ingredients[0].name == "Peanut Butter")
        #expect(recipeDetail.ingredients[0].measure == "1 cup")
        #expect(recipeDetail.ingredients[1].name == "Sugar")
        #expect(recipeDetail.ingredients[1].measure == "1/2 cup")
        #expect(recipeDetail.ingredients[2].name == "Egg")
        #expect(recipeDetail.ingredients[2].measure == "1")
    }

}
