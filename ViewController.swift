import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var habits: [Habit] = [
        Habit(name: "Drink Water", isCompleted: false),
        Habit(name: "Exercise", isCompleted: false)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table View

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return habits.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")

        let habit = habits[indexPath.row]
        cell.textLabel?.text = habit.name

        return cell
    }
}
