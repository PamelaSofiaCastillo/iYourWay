//
//  EventViewModel.swift
//  YourWay
//
//  Created by Alumnos on 11/12/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

struct EventViewModel: Identifiable{
    
    var sportEvent: SportEvent
    var id = UUID()
    
    init(sportEvent: SportEvent){
        self.sportEvent = sportEvent
    }
    
    var title: String{
        return self.sportEvent.title
    }
}
