//: [Previous](@previous)

import Foundation

extension String: Error {}
struct Address {
    let city: String
    let street: String
}

struct Event {
    let name: String
    let location: Address
    let contact: String?
}

let path = Bundle.main.path(forResource: "events", ofType: "json")!
let url = URL(fileURLWithPath: path)
let data = try! Data(contentsOf: url)
let json = try! JSONSerialization.jsonObject(with: data, options: .allowFragments) as! Array<[String: AnyObject]>


let events1 = json.map { (jsonDict) -> Event? in
    if let address = jsonDict["address"] as? [String: AnyObject] {
        if let city = address["city"] as? String {
            if let street = address["street"] as? String {
                if let name = jsonDict["name"] as? String {
                    let contact = jsonDict["contact"] as? String
                    return Event(name: name, location: Address(city: city, street: street), contact: contact)
                }
            }
        }
    }

    return nil
}

events1

let events2 = json.map { (jsonDict) -> Event? in
    guard
    let address = jsonDict["address"] as? [String: AnyObject],
        let city = address["city"] as? String,
        let street = address["street"] as? String,
        let name = jsonDict["name"] as? String else { return nil }

    let contact = jsonDict["contact"] as? String
    return Event(name: name, location: Address(city: city, street: street), contact: contact)
}
events2

extension Event {
    init(json: [String: AnyObject]) throws {
        guard
            let addressJson = json["address"] as? [String: AnyObject],
            let name = json["name"] as? String else {
                throw "Invalid JSON"
        }

        let contact = json["contact"] as? String
        let address = try Address(json: addressJson)
        self.init(name: name, location: address, contact: contact)
    }
}

extension Address {
    init(json: [String: AnyObject]) throws {
        guard
        let city = json["city"] as? String,
            let street = json["street"] as? String else {
                throw "Invalid json"
        }
        
        self.init(city: city, street: street)
    }
}

let events3 = json.map { (eventJson) -> Event? in
    return try? Event(json: eventJson)
}

events3


let events4 = json.flatMap { (eventJson) -> Event? in
    return try? Event(json: eventJson)
}

events4




//: [Next](@next)
