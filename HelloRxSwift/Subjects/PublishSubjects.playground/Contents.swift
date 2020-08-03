import UIKit
import RxSwift

let disposeBag = DisposeBag()

// Publish Subjects

let subjects = PublishSubject<String>()
subjects.onNext("Issue 1")
subjects.subscribe { (event) in
    print(event)
}
subjects.onNext("Issue 2")
subjects.onNext("Issue 3")

//subjects.dispose()

subjects.onCompleted()

subjects.onNext("Issue 3")

