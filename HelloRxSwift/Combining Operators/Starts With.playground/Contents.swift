import UIKit
import RxSwift

let disposeBag = DisposeBag()

let numbers = Observable.of(1,2,3,4,5)

let observable = numbers.startWith(10)
observable.subscribe(onNext: {
    print($0)
    }).disposed(by: disposeBag)
