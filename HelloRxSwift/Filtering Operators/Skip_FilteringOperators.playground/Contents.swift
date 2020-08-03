import UIKit
import UIKit
import RxSwift
import PlaygroundSupport


let strikes = PublishSubject<String>()

let disposeBag = DisposeBag()

Observable.of("A","B","C","D","E","F","G","H","J")
.skip(3)
    .subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)
