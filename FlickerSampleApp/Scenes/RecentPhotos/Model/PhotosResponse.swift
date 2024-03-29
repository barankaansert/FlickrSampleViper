//
//  PhotosResponse.swift
//  FlickerSampleApp
//
//  Created by Baran Kaan Sert on 6.03.2019.
//  Copyright © 2019 Baran Kaan Sert. All rights reserved.
//

import Foundation

/**
 Photos response model detailed.
 */

struct PhotosResponse: Decodable {
    let photos: Photos
}

struct Photos: Decodable {
    let page: Int
    let pages: Int
    let perpage: Int
    let photo: [Photo]
}

struct Photo: Decodable {
    
    /**
     Coding Keys for usage of different name of attribute.
     */
    enum CodingKeys: String, CodingKey {
        case title
        case owner
        case ownerName = "ownername"
        case secret
        case iconserver
        case iconfarm
        case photoUrl = "url_l"
        case date = "datetaken"
        case profilePictureUrl
    }
    
    let title: String
    let owner: String
    let ownerName: String
    let secret: String
    let iconserver: String
    let iconfarm: Int
    let photoUrl: String?
    let date: String
    var profilePictureUrl: String?
}



