public class CoinMaker{ 
	static public func getChange(amount: Int) -> [String:Int] {
		var amount = amount
		var change: [String: Int] = [:]
		let currency = [1:"pennies", 5:"nickels", 10:"dimes", 25:"quarters"]
		let denominationValues = Array(currency.keys)
		for denominationValue in denominationValues.sorted().reversed(){
			let denominationName = currency[denominationValue]!
			change[denominationName] = amount / denominationValue
			amount = amount % denominationValue
		}
		return change
	}
}
