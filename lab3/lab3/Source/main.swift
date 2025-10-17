import Foundation

// 1. Create sample products
let laptop = Product(id: "p1", name: "Laptop", price: 999.99, category: .electronics, description: "Powerful laptop")!
let book = Product(id: "p2", name: "Book", price: 19.99, category: .books, description: "Interesting book")!
let headphones = Product(id: "p3", name: "Headphones", price: 49.99, category: .electronics, description: "Noise-cancelling")!

// Invalid product (should be nil)
let invalid = Product(id: "bad", name: "Bad", price: -5, category: .food, description: "Invalid")
print("Invalid product created? \(invalid != nil)")

// 2. Test adding items to cart
let cart = ShoppingCart()
cart.addItem(product: laptop, quantity: 1)
cart.addItem(product: book, quantity: 2)

// 3. Test adding same product twice (should update quantity)
cart.addItem(product: laptop, quantity: 1)
// Verify laptop quantity is now 2

// 4. Test cart calculations
print("Subtotal: \(cart.subtotal)")
print("Item count: \(cart.itemCount)")

// 5. Test discount code (case-insensitive)
cart.discountCode = "save10"
print("Total with discount: \(cart.total)")

// 6. Test removing items
cart.removeItem(productId: book.id)

// 7. Demonstrate REFERENCE TYPE behavior
func modifyCart(_ cart: ShoppingCart) {
    cart.addItem(product: headphones, quantity: 1)
}
modifyCart(cart)
// Verify original cart was modified
print("After modifyCart, item count: \(cart.itemCount)")

// 8. Demonstrate VALUE TYPE behavior
let item1 = CartItem(product: laptop, quantity: 1)
var item2 = item1
item2.updateQuantity(5)
print("Item1 quantity: \(item1.quantity), Item2 quantity: \(item2.quantity)")

// 9. Create order from cart
let address = Address(street: "123 Main St", city: "Cupertino", zipCode: "95014", country: "USA")
let order = Order(from: cart, shippingAddress: address)

// 10. Modify cart after order creation
cart.clearCart()
print("Order items count: \(order.itemCount)") // Should not be 0
print("Cart items count: \(cart.itemCount)")   // Should be 0
