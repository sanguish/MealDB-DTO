//
//  JSONDecodingTests.swift
//  JSONDecodingTests
//
//  Created by Scott Anguish on 6/17/24.
//

import Testing
import Foundation

func createRecipeDTO(JSON json: String) throws -> RecipeDetailDTO? {
    let data = json.data(using: .utf8)!
    return try JSONDecoder().decode(RecipeDetailDTO.self,
                                    from: data)
}

struct RecipeDetailDTOTests {
    @Test("Test JSON Parsing")
    func jsonParsing() async throws {
        let testRecipeDTO = try createRecipeDTO(JSON: JSONTestCases.passingJSON)

        #expect(testRecipeDTO?.id == "52958")
        #expect(testRecipeDTO?.name == "Peanut Butter Cookies")
        #expect(testRecipeDTO?.category == "Dessert")
        #expect(testRecipeDTO?.instructions == "Preheat oven to 350 degrees.")
        #expect(testRecipeDTO?.mealThumbnailURL?.absoluteString == "https://www.themealdb.com/images/media/meals/1544384070.jpg")
        #expect(testRecipeDTO?.keywords == "Breakfast,UnHealthy,BBQ")
        #expect(testRecipeDTO?.ingredient1 == "Peanut Butter")
        #expect(testRecipeDTO?.ingredient2 == "Sugar")
        #expect(testRecipeDTO?.ingredient3 == "Egg")
        #expect(testRecipeDTO?.ingredient4 == "")
        #expect(testRecipeDTO?.ingredient5 == nil)
        #expect(testRecipeDTO?.measure1 == "1 cup")
        #expect(testRecipeDTO?.measure2 == "1/2 cup")
        #expect(testRecipeDTO?.measure3 == "1")
        #expect(testRecipeDTO?.measure4 == "")
        #expect(testRecipeDTO?.measure5 == nil)
    }

    @Test("JSON Parsing - missing name")
    func jsonParsingMissingName() async throws {
        #expect(throws: Swift.DecodingError.self) {
            _ = try createRecipeDTO(JSON: JSONTestCases.missingMeal)
        }
    }

}
