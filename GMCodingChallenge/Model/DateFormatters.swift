//
//  DateFormatters.swift
//  GMCodingChallenge
//
//  Created by Hin Wong on 6/8/21.
//

import Foundation


let inputDateFormatter: DateFormatter = {
    let inputDate = DateFormatter()
    inputDate.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
    return inputDate
}()

let outputDateFormatter: DateFormatter = {
    let outputDate = DateFormatter()
    outputDate.dateFormat = "MM-dd-yyyy"
    return outputDate
}()

