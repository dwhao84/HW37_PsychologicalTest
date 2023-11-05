//
//  Data.swift
//  HW37_PsychologicalTest
//
//  Created by Dawei Hao on 2023/11/1.
//

import UIKit

struct Data {
    var question:       String
    var selectionOne:   String
    var selectionTwo:   String
    var selectionThree: String
    var selectionFour:  String
}

// Create a tuple for each cities name also inclu. Coordinates.
let cityCoordinates: [(name: String, latitude: Double, longitude: Double)] = [
    ("Tokyo", 35.6895, 139.6917),
    ("Sydney", -33.8688, 151.2093),
    ("London", 51.5074, -0.1278),
    ("Toronto", 43.6510, -79.3470),
    ("New York", 40.7128, -74.0060),
    ("Paris", 48.8566, 2.3522),
    ("Auckland", -36.8485, 174.7633),
    ("Rome", 41.9028, 12.4964),
    ("Seoul", 37.5665, 126.9780),
    ("Vancouver", 49.2827, -123.1207),
    ("Chicago", 41.8781, -87.6298)
]

let combinedChoices: [[String: Any]] = [
    [
        "question": "What is your favorite weather?",
        "choices": [
            ["description": "Mild with distinct seasons", "city": "Tokyo"],
            ["description": "Warm and sunny", "city": "Sydney"],
            ["description": "Cool and rainy", "city": "London"],
            ["description": "Cold with snow", "city": "Toronto"]
        ]
    ],
    [
        "question": "What is your pace of life?",
        "choices": [
            ["description": "Fast-paced and energetic", "city": "New York"],
            ["description": "Artistic with a rich history", "city": "Paris"],
            ["description": "Relaxed and close to nature", "city": "Auckland"],
            ["description": "Technologically advanced and efficient", "city": "Tokyo"]
        ]
    ],
    [
        "question": "What is your food preference?",
        "choices": [
            ["description": "International cuisine and cultural diversity", "city": "New York"],
            ["description": "Traditional dishes and authentic flavors", "city": "Rome"],
            ["description": "Abundant seafood and fresh fruits", "city": "Sydney"],
            ["description": "Convenient fast food and a variety of snacks", "city": "Seoul"]
        ]
    ],
    [
        "question": "What is your preferred leisure activity?",
        "choices": [
            ["description": "Outdoor adventures and exploration", "city": "Vancouver"],
            ["description": "Shopping and fashion", "city": "Paris"],
            ["description": "Cultural arts and museum visits", "city": "London"],
            ["description": "Music and nightlife", "city": "Chicago"]
        ]
    ]
]



let citiesDescription: [[String: String]] = [

    // Tokyo
    ["cityName": "Tokyo",
     "description": "A bustling metropolis blending ultra-modern skyscrapers, traditional temples, and unique pop culture. Known for its diverse culinary scene, from street food vendors to Michelin-starred restaurants."],

    // Sydney
    ["cityName": "Sydney",
     "description": "Famous for its stunning harbour, iconic Opera House, and the Sydney Harbour Bridge. It's a gateway to beautiful beaches, and its vibrant culture reflects its diverse population."],

    // London
    ["cityName": "London",
     "description": "A city steeped in history, with landmarks like the Tower of London, Buckingham Palace, and the British Museum. Known for its cultural diversity, rich theatre scene, and historic pubs."],

    // Toronto
    ["cityName": "Toronto",
     "description": "Canada's largest city, renowned for its multicultural neighborhoods, the CN Tower, and a vibrant arts scene. It's a melting pot of cultures with a wide array of food and cultural festivals."],

    // New York
    ["cityName": "New York",
     "description": "Known as 'The Big Apple,' a city of iconic landmarks like the Statue of Liberty, Times Square, and Central Park. The epitome of an urban jungle, with an incredible mix of arts, culture, and business."],

    // Paris
    ["cityName": "Paris",
     "description": "The City of Light, famous for its romantic ambiance, architectural marvels like the Eiffel Tower and Notre-Dame, and world-class art and fashion. Renowned for its café culture, and exquisite cuisine."],

    // Auckland
    ["cityName": "Auckland",
     "description": "Known for its stunning natural beauty, surrounded by two harbors and dotted with volcanic hills. A hub for outdoor activities, Maori culture, and a thriving food scene."],

    // Rome
    ["cityName": "Rome",
     "description": "A historic city, known as the 'Eternal City,' filled with ancient ruins like the Colosseum and Roman Forum, alongside Vatican City. Offers a vibrant street life and a delicious culinary tradition."],
    // Seoul
    ["cityName": "Seoul",
     "description": "A dynamic city where ancient palaces and Buddhist temples meet cutting-edge technology and modern skyscrapers. Well-known for its street food, K-pop culture, and lively nightlife."],
    // Vancouver
    ["cityName": "Vancouver",
     "description": "Known for its breathtaking natural landscapes, surrounded by mountains and water. Famous for outdoor activities, a thriving art scene, and a melting pot of different cultures."],
    // Chicago
    ["cityName": "Chicago",
     "description": "Famed for its bold architecture, jazz music, and Windy City charm. Boasts a stunning skyline, diverse neighborhoods, and is known for its deep-dish pizza and sports culture."]
]
