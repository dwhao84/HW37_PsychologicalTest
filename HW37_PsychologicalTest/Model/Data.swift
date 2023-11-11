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
    var text : String
    var city : String
    var score: Int
}

enum CityScore: CaseIterable {
    case tokyo, sydney, london, newYork, unknown

    init(score: Int) {
         switch score {
            case 1...4  :
                self = .tokyo
            case 5...20 :
                self = .sydney
            case 21...40:
                self = .london
            case 41...80:
                self = .newYork
            default:
                self = .unknown
        }
    }

    var city: City? {
        switch self {
            case .tokyo:
                return .tokyo
            case .sydney:
                return .sydney
            case .london:
                return .london
            case .newYork:
                return .newYork
            case .unknown:
                return nil
        }
    }
}

enum City: String, CaseIterable {
    case tokyo      = "Tokyo"
    case sydney     = "Sydney"
    case london     = "London"
    case newYork    = "New York"

    var coordinates: (latitude: Double, longitude: Double) {
        switch self {
            case .tokyo:
                return (35.6895, 139.6917)
            case .sydney:
                return (-33.8688, 151.2093)
            case .london:
                return (51.5074, -0.1278)
            case .newYork:
                return (40.7128, -74.0060)
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
        description: "A bustling metropolis blending ultra-modern skyscrapers, traditional temples, and unique pop culture. Known for its diverse culinary scene, from street food vendors to Michelin-starred restaurants."
    ),
    CityDescription(
        cityName: "Sydney",
        description: "Famous for its stunning harbour, iconic Opera House, and the Sydney Harbour Bridge. It's a gateway to beautiful beaches, and its vibrant culture reflects its diverse population."
    ),
    CityDescription(
        cityName: "London",
        description: "A city steeped in history, with landmarks like the Tower of London, Buckingham Palace, and the British Museum. Known for its cultural diversity, rich theatre scene, and historic pubs."
    ),
    CityDescription(
        cityName: "New York",
        description: "Known as 'The Big Apple,' a city of iconic landmarks like the Statue of Liberty, Times Square, and Central Park. The epitome of an urban jungle, with an incredible mix of arts, culture, and business."
    )
]



let questions: [Question] = [
    Question(
        question: "What is your favorite weather?",
        answers: [
            Answer(text: "Mild with distinct seasons", city: "Tokyo", score: 1),
            Answer(text: "Warm and sunny", city: "Sydney", score: 5),
            Answer(text: "Cool and rainy", city: "London", score: 10),
            Answer(text: "Cold with snow", city: "New York", score: 20)
        ]
    ),
    Question(
        question: "What is your pace of life?",
        answers: [
            Answer(text: "Fast-paced and energetic", city: "New York", score: 20),
            Answer(text: "Artistic and culturally vibrant", city: "London", score: 10),
            Answer(text: "Relaxed and harmonious with nature", city: "Sydney", score: 5),
            Answer(text: "Technologically advanced and efficient", city: "Tokyo", score: 1)
        ]
    ),
    Question(
        question: "What is your food preference?",
        answers: [
            Answer(text: "Diverse international cuisine", city: "New York", score: 20),
            Answer(text: "Traditional and hearty meals", city: "London", score: 10),
            Answer(text: "Fresh seafood and vibrant flavors", city: "Sydney", score: 5),
            Answer(text: "Innovative and high-tech dining experiences", city: "Tokyo", score: 1)
        ]
    ),
    Question(
        question: "What is your preferred leisure activity?",
        answers: [
            Answer(text: "Urban exploration and cultural diversity", city: "New York", score: 20),
            Answer(text: "Historical tours and classical arts", city: "London", score: 10),
            Answer(text: "Beach activities and nature walks", city: "Sydney", score: 5),
            Answer(text: "Cutting-edge technology and modern entertainment", city: "Tokyo", score: 1)
        ]
    )
]


let pictureNameArray: [String] = [
    "HomePage_Tokyo",
    "HomePage_Toronto",
    "HomePage_Rome",
    "HomePage_London",
    "HomePage_Sydney"
]

