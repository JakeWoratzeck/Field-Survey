//
//  FieldSurveysJSONLoader.swift
//  Field Survey
//
//  Created by Jake Woratzeck on 10/28/17.
//  Copyright © 2017 Jake Woratzeck. All rights reserved.
//

import Foundation

class FieldSurveysJSONLoader {
    class func load(fileName: String) -> [FieldSurvey]{
        var observations = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
        
            observations = FieldSurveyJSONParser.parse(data)
        }
        
        return observations
    }
}
