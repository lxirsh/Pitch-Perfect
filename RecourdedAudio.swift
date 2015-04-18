//
//  RecourdedAudio.swift
//  Pitch Perfect
//
//  Created by Lance Hirsch on 4/10/15.
//  Copyright (c) 2015 Lance Hirsch. All rights reserved.
//

import Foundation

class RecordedAudio: NSObject {
    var filePathURL: NSURL!
    var title: String!
    init(filePathURL: NSURL, title: String) {
        self.filePathURL = filePathURL
        self.title = title
    }
}