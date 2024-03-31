//
//  Recipe.swift
//  LetUsCook
//
//  Created by Justin Hoang on 3/30/24.
//

import Foundation
import SwiftData

@Model
final class Recipe {
    /// The name of the recipe
    // TODO: this name should be unique (well this may be a design decision 
    // because you can have multiple ways to cook the same dish according to
    // different people)
    var name: String

    // TODO: store the photo not as a string..
    var photo: String

    // TODO: find a way to make categories unique as well
    var categories: [String] = []

    // TODO: add validation for the the times -- also don't make these strings
    /// The amount of time that it takes for you to prepare the dish
    var prepTime: String
    /// The amount of time that the dish takes to cook
    var cookTime: String

    /// Any remarks about the dish
    var comments: String

    /// The list of ingredients for the recipe
    /// Use this `@Relationship(deleteRule: .cascade, inverse: \...)`
    // TODO: should this be assigned at the end of the recipe?
    // TODO: maybe make a convenience init
    var ingredients: [Ingredient] = []

    /// The list of the instructions on how to make the recipe
    /// instructions one by one instead of adding all the instructions at once
    // TODO: Probably need a helper function for this because we'll add the
    // instructions line by line
    // TODO: maybe make a convenience init
    var instructions: [Instruction] = []

    init(
        name: String,
        photo: String,
        categories: [String],
        prepTime: String,
        cookTime: String,
        comments: String,
        ingredients: [Ingredient],
        instructions: [Instruction]
    ) {
        self.name = name
        self.photo = photo
        self.categories = categories
        self.prepTime = prepTime
        self.cookTime = cookTime
        self.comments = comments
        self.ingredients = ingredients
        self.instructions = instructions
    }
}

extension Recipe: CustomStringConvertible {
    var description: String {
        """
        Recipe Name: \(name)
        Ingredients: \(ingredients)
        Instructions: \(instructions)
        """
    }
}