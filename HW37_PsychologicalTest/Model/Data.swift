//
//  Data.swift
//  HW37_PsychologicalTest
//
//  Created by Dawei Hao on 2023/11/1.
//

import UIKit

struct Question {
    var question:  String
    var answers : [Answer]
}

struct Answer {
    var text: String
    var city: String
}

var questions: [Question] = [
    Question(
        question: "What is your favorite weather?",
        answers: [
            Answer(text: "Mild with distinct seasons", city: "Tokyo"),
            Answer(text: "Warm and sunny",             city: "Sydney"),
            Answer(text: "Cool and rainy",             city: "London"),
            Answer(text: "Cold with snow",             city: "Toronto")
        ]
    ),
    Question(
        question: "What is your pace of life?",
        answers: [
            Answer(text: "Fast-paced and energetic",               city: "New York"),
            Answer(text: "Artistic with a rich history",           city: "Paris"),
            Answer(text: "Relaxed and close to nature",            city: "Auckland"),
            Answer(text: "Technologically advanced and efficient", city: "Tokyo")
        ]
    ),
    Question(
        question: "What is your food preference?",
        answers: [
            Answer(text: "International cuisine and cultural diversity", city: "New York"),
            Answer(text: "Traditional dishes and authentic flavors",     city: "Rome"),
            Answer(text: "Abundant seafood and fresh fruits",            city: "Sydney"),
            Answer(text: "Convenient fast food and a variety of snacks", city: "Seoul")
        ]
    ),
    Question(
        question: "What is your preferred leisure activity?",
        answers: [
            Answer(text: "Outdoor adventures and exploration", city: "Vancouver"),
            Answer(text: "Shopping and fashion",               city: "Paris"),
            Answer(text: "Cultural arts and museum visits",    city: "London"),
            Answer(text: "Music and nightlife",                city: "Chicago")
        ]
    )
]

enum City: String, CaseIterable {
    case Tokyo      = "Tokyo"
    case Sydney     = "Sydney"
    case London     = "London"
    case Toronto    = "Toronto"
    case NewYork    = "New York"
    case Paris      = "Paris"
    case Auckland   = "Auckland"
    case Rome       = "Rome"
    case Seoul      = "Seoul"
    case Vancouver  = "Vancouver"
    case Chicago    = "Chicago"

    var coordinates: (latitude: Double, longitude: Double) {
        switch self {
            case .Tokyo:
                return (35.6895, 139.6917)
            case .Sydney:
                return (-33.8688, 151.2093)
            case .London:
                return (51.5074, -0.1278)
            case .Toronto:
                return (43.6510, -79.3470)
            case .NewYork:
                return (40.7128, -74.0060)
            case .Paris:
                return (48.8566, 2.3522)
            case .Auckland:
                return (-36.8485, 174.7633)
            case .Rome:
                return (41.9028, 12.4964)
            case .Seoul:
                return (37.5665, 126.9780)
            case .Vancouver:
                return (49.2827, -123.1207)
            case .Chicago:
                return (41.8781, -87.6298)
        }
    }
   
}



// CityDescription
struct CityDescription {
    let cityName: String
    let description: String
}

let cities: [CityDescription] = [
    CityDescription(
        cityName: "Tokyo",
        description: "A bustling metropolis blending ultra-modern skyscrapers, traditional temples, and unique pop culture. Known for its diverse culinary scene, from street food vendors to Michelin-starred restaurants."),
    CityDescription(
        cityName: "Sydney",
        description: "Famous for its stunning harbour, iconic Opera House, and the Sydney Harbour Bridge. It's a gateway to beautiful beaches, and its vibrant culture reflects its diverse population."),
    CityDescription(
        cityName: "London",
        description: "A city steeped in history, with landmarks like the Tower of London, Buckingham Palace, and the British Museum. Known for its cultural diversity, rich theatre scene, and historic pubs."),
    CityDescription(
        cityName: "Toronto",
        description: "Canada's largest city, renowned for its multicultural neighborhoods, the CN Tower, and a vibrant arts scene. It's a melting pot of cultures with a wide array of food and cultural festivals."),
    CityDescription(
        cityName: "New York",
        description: "Known as 'The Big Apple,' a city of iconic landmarks like the Statue of Liberty, Times Square, and Central Park. The epitome of an urban jungle, with an incredible mix of arts, culture, and business."),
    CityDescription(
        cityName: "Paris",
        description: "The City of Light, famous for its romantic ambiance, architectural marvels like the Eiffel Tower and Notre-Dame, and world-class art and fashion. Renowned for its café culture, and exquisite cuisine."),
    CityDescription(
        cityName: "Auckland",
        description: "Known for its stunning natural beauty, surrounded by two harbors and dotted with volcanic hills. A hub for outdoor activities, Maori culture, and a thriving food scene."),
    CityDescription(
        cityName: "Rome",
        description: "A historic city, known as the 'Eternal City,' filled with ancient ruins like the Colosseum and Roman Forum, alongside Vatican City. Offers a vibrant street life and a delicious culinary tradition."),
    CityDescription(
        cityName: "Seoul",
        description: "A dynamic city where ancient palaces and Buddhist temples meet cutting-edge technology and modern skyscrapers. Well-known for its street food, K-pop culture, and lively nightlife."),
    CityDescription(
        cityName: "Vancouver",
        description: "Known for its breathtaking natural landscapes, surrounded by mountains and water. Famous for outdoor activities, a thriving art scene, and a melting pot of different cultures."),
    CityDescription(
        cityName: "Chicago",
        description: "Famed for its bold architecture, jazz music, and Windy City charm. Boasts a stunning skyline, diverse neighborhoods, and is known for its deep-dish pizza and sports culture.")
]

let pictureNameArray: [String] = [
    "HomePage_Tokyo",
    "HomePage_Toronto",
    "HomePage_Rome",
    "HomePage_London",
    "HomePage_Sydney"
]

enum CityValue: CaseIterable {
    case Tokyo
    case Sydney
    case London
    case Toronto
    case NewYork
    case Paris
    case Auckland
    case Rome
    case Seoul
    case Vancouver
    case Chicago

    var cityCode: Int {
        switch self {
            case .Tokyo:
                return 1
            case .Sydney:
                return 2
            case .London:
                return 3
            case .Toronto:
                return 4
            case .NewYork:
                return 5
            case .Paris:
                return 6
            case .Auckland:
                return 7
            case .Rome:
                return 8
            case .Seoul:
                return 9
            case .Vancouver:
                return 10
            case .Chicago:
                return 11

        }
    }
}
