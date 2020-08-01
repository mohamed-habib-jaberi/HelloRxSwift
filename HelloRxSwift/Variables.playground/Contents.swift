import UIKit
import RxSwift

let disposeBag = DisposeBag()

print("#####  variable1  ########")

let variable1 = Variable("Initial Value")
variable1.value = "Hello world"

variable1.asObservable().subscribe{
    print($0)
}

print("#####  variable2  ########")

let variable2 = Variable([String]())
variable2.value.append("Item 1")

variable2.asObservable().subscribe{
    print($0)
}
variable2.value.append("Item 2")
