import UIKit

class AddHabitViewController: UIViewController {

    var newHabit: Habit?

    func createHabit(name: String) {
        newHabit = Habit(name: name, isCompleted: false)
    }
}
