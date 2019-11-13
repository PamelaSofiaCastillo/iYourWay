//
//  EventListViewModel.swift
//  YourWay
//
//  Created by Alumnos on 11/12/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

class EventListViewModel: ObservableObject {
    @Published var events = [EventViewModel]()
    
    init() {
        EventListService().getEvents() {
            events in
            if let events = events {
                self.events = events.map(EventViewModel.init)
            }
        }
    }
}
