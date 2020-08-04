import UIKit
import PlaygroundSupport
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()

struct Student {
    var score: BehaviorRelay<Int>
    
}

let john = Student(score: BehaviorRelay(value: 75))
let Marry = Student(score: BehaviorRelay(value: 95))

let student = PublishSubject<Student>()

student.asObservable()
    .flatMapLatest { $0.score.asObservable() }
    .subscribe( onNext: {
        print($0)
    }).disposed(by: disposeBag)


student.onNext(john)
john.score.accept(100)

student.onNext(Marry)
john.score.accept(50)


