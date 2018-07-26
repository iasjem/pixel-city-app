//
//  Constants.swift
//  pixel-city
//
//  Created by Jemimah Beryl M. Sai on 26/07/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import Foundation

let API_KEY = "6c02f7479a9a0d0520b7a0ea9b721ff4"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(key)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}
