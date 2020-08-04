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
    .flatMap { $0.score.asObservable() }
    .subscribe( onNext: {
        print($0)
    }).disposed(by: disposeBag)

student.onNext(john)
john.score.accept(100)
student.onNext(Marry)
Marry.score.accept(200)

john.score.accept(300)
