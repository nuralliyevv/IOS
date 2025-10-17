class ShoppingCart {
    private(set) var items: [CartItem] = []
    var discountCode: String?

    init() {}

    func addItem(product: Product, quantity: Int = 1) {
        guard quantity > 0 else { return }
        if let index = items.firstIndex(where: { $0.product.id == product.id }) {
            items[index].increaseQuantity(by: quantity)
        } else {
            var newItem = CartItem(product: product, quantity: 1)
            newItem.updateQuantity(quantity)
            items.append(newItem)
        }
    }

    func removeItem(productId: String) {
        items.removeAll { $0.product.id == productId }
    }

    func updateItemQuantity(productId: String, quantity: Int) {
        if quantity == 0 {
            removeItem(productId: productId)
            return
        }
        guard quantity > 0 else { return }
        guard let index = items.firstIndex(where: { $0.product.id == productId }) else { return }
        items[index].updateQuantity(quantity)
    }

    func clearCart() {
        items.removeAll()
    }

    var subtotal: Double {
        items.reduce(0) { $0 + $1.subtotal }
    }

    var discountAmount: Double {
        guard let code = discountCode?.lowercased() else { return 0 }
        let percent: Double
        switch code {
        case "save10": percent = 0.10
        case "save20": percent = 0.20
        default: percent = 0.0
        }
        return subtotal * percent
    }

    var total: Double {
        max(0, subtotal - discountAmount)
    }

    var itemCount: Int {
        items.reduce(0) { $0 + $1.quantity }
    }

    var isEmpty: Bool {
        items.isEmpty
    }
}
