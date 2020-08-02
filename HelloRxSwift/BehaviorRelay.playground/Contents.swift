import UIKit
import RxSwift
import RxCocoa


let disposeBag = DisposeBag()

print("------ String -------")

let relay = BehaviorRelay(value: "Initial Value")

relay.asObservable().subscribe{
    print($0)
}

// can't use relay.value because it is immutable can't change the value it's read only
//relay.value = "Hello World"

// change the value
relay.accept("Hello World")
 
print("------ Array-------")
print("------ relay2-------")
let relay2 = BehaviorRelay(value: [String]())
relay2.accept(["Item 1"])

relay2.asObservable().subscribe{
    print($0)
}
print("------ relay3-------")
let relay3 = BehaviorRelay(value: ["Item 1"])
relay3.accept( relay3.value + ["Item 2"])

relay3.asObservable().subscribe{
    print($0)
}

print("------ relay4 -------")

let relay4 = BehaviorRelay(value: ["Item 1"])

var value = relay4.value
value.append("Item 2")
value.append("Item 3")

relay4.accept(value)

relay4.asObservable().subscribe{
    print($0)
}
