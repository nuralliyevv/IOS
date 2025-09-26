// Step 1

var firstName: String = "Miras"
var lastName: String = "Nuraliyev"
var birthYear: Int = 2003
let currentYear: Int = 2025
var age: Int = currentYear - birthYear
var isStudent: Bool = true
var height: Double = 1.80
var country: String = "Kazakhstan"
var city: String = "Aktobe"

// Step 2

var hobby: String = "Volleyball"
var numberOfHobbies: Int = 2
var favoriteNumber: Int = 4
var isHobbyCreative: Bool = true
var otherHobby: String = "CS:GO"

// Step 3

var lifeStory = """
My name is \(lastName) \(firstName). I am \(age) years old,
born in \(birthYear). I am \(isStudent ? "" : "not ")currently a student.
I enjoy \(hobby), which is \(isHobbyCreative ? "" : "not ")a creative hobby.
I have \(numberOfHobbies) hobbies in total, and my favourite number is \(favoriteNumber).
"""

// bonus

var futureGoals: String = "My future goal is to get back my scholarship"

lifeStory.append("\n")
lifeStory.append(futureGoals)

// Step 4

print(lifeStory)