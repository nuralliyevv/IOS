var shoppingList: [String] = []

while true {
    print("\nMenu: 1) Add 2) Remove 3) Show 4) Exit")
    if let choice = readLine() {
        switch choice {
        case "1":
            print("Enter item to add:")
            if let item = readLine() {
                shoppingList.append(item)
            }
        case "2":
            print("Enter item to remove:")
            if let item = readLine(), let index = shoppingList.firstIndex(of: item) {
                shoppingList.remove(at: index)
            } else {
                print("Item not found")
            }
        case "3":
            print("Shopping List: \(shoppingList)")
        case "4":
            print("Goodbye!")
            break
        default:
            print("Invalid choice")
        }
    }
}