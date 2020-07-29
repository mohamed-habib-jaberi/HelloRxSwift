import UIKit
import RxSwift

let observable = Observable.just(1)

// Create array with different argument
let observable2 = Observable.of(1,2,3,4)
//Create observable on whole array
let observable3 = Observable.of([1,2,3,4,5,6])
//Create observable on individual element of array
let observable4 = Observable.from([1,2,3,4])

print("-----------observable4_Example_1-------------")
observable4.subscribe { (event) in
       print("event4 is: \(event)")
    if let element = event.element{

        print("element4 is: \(element)")

    }
}
print("--------observable4_Example_2_ With_onNext--------")
observable4.subscribe(onNext: { (element) in
    print("element4 is: \(element)")
})
    
print("-----------observable3-------------")
observable3.subscribe { (event) in
       print("event3 is: \(event)")
    if let element = event.element{

        print("element3 is: \(element)")

    }
}

