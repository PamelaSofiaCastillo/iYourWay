//
//  EventListService.swift
//  YourWay
//
//  Created by Alumnos on 11/12/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

class EventListService {
    func getEvents(completion: @escaping ([SportEvent]?) -> ()){
        guard let url = URL(string: "http://yourwayapi.azurewebsites.net/api/sportEvents") else {fatalError("Invalid URL")}
        
        URLSession.shared.dataTask(with: url){
            data, response, error in
            guard let data = data, error==nil else {
                completion(nil)
                if let error = error{
                    print(error.localizedDescription)
                }
                return
            }
            
            let events = try? JSONDecoder().decode([SportEvent].self, from: data)
            DispatchQueue.main.async {
                completion(events)
            }
            
            if let error = error{
                print(error.localizedDescription)
            }
        }.resume()
    }
}
