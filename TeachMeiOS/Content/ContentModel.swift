//
//  ContentModel.swift
//  TeachMeiOS
//
//  Created by Oleh Veheria on 24.09.2022.
//

import SwiftUI

struct ContentModel {
    enum Command: CaseIterable, Identifiable {
        case borsh
        case shakshuka
        case chicken
        case burger
        case salat

        var id: UUID { UUID() }

        var name: String {
            switch self {
            case .borsh:
                return "Borsh"
            case .shakshuka:
                return "Shakshuka"
            case .chicken:
                return "Chicken"
            case .burger:
                return "Burger"
            case .salat:
                return "Salat"
            }
        }

        var image: Image {
            Image(name)
        }

        var isFavorite: Bool {
            true
        }

        var text: String {
            """
      Ingredients

      1 (16 ounce) package pork sausage

      3 medium beets, peeled and shredded

      3 carrots, peeled and shredded

      3 medium baking potatoes, peeled and cubed

      ½ medium head cabbage, cored and shredded

      1 cup diced tomatoes, drained

      1 tablespoon vegetable oil

      1 medium onion, chopped

      1 (6 ounce) can tomato paste

      8 ¾ cups water, divided, or as needed

      3 cloves garlic, minced

      1 teaspoon white sugar, or to taste

      salt and pepper to taste

      ½ cup sour cream, for topping

      1 tablespoon chopped fresh parsley for garnish


      Crumble sausage into a skillet set over medium-high heat. Cook and stir until no longer pink. Remove from the heat and set aside.

      Fill a large pot halfway with water (about 8 cups) and bring to a boil.

      Add sausage to pot, cover pot, and return to a boil. Add beets and cook until they have lost their color. Add carrots and potatoes and simmer until tender, about 15 minutes.

      Add cabbage and diced tomatoes to pot.

      Heat oil in a skillet over medium heat. Add onion and cook until tender. Stir in tomato paste and remaining 3/4 cup water until well blended. Transfer to the pot.

      Add garlic to the soup, cover, and turn off the heat. Let stand 5 minutes. Stir in sugar and season with salt and pepper.

      Ladle into serving bowls. Garnish with sour cream and parsley.
"""

        }
    }
}
