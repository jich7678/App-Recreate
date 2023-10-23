//
//  RestaurantModel.swift
//  App Recreate
//
//  Created by Sam Chen on 10/18/23.
//

import Foundation
import SwiftUI

struct Restaurant: Identifiable {
    var id = UUID()
    let name: String
    let description: String
}

var gaiaMasala = Restaurant(
    name: "Gaia Masala",
    description: "Gaia Masala Burger is passionate about creating a unique culinary experience. They blend traditional American flavors with Indian spices to create a one-of-a-kind burger, in addition to offering authentic Indian curry and Middle Eastern dishes.")

var japango = Restaurant(
    name: "Japango",
    description: "Japango Boulder serves a dynamic blend of traditional and contemporary Japanese cuisine. Enjoy dining on their beautiful patio!")

var central = Restaurant(
    name: "Central",
    description: "Central Restaurante is the flagship restaurant of Peruvian chef, Virgilio Martínez Véliz, and serves as his workshop in the investigation and integration of indigenous Peruvian ingredients into the restaurant's menu. The restaurant is known for its contemporary interpretation and presentation of Peruvian cuisine.")

var disfrutar = Restaurant(
    name: "Disfrutar",
    description: "In short, surprisingly Mediterranean premises, with an intimate and welcoming manner, and creative cuisine designed to “Disfrutar”.")
