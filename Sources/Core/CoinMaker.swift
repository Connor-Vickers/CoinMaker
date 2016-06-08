public class CoinMaker{ 
	static public func getChange(amount: Int, currency: [Int:String]) -> [String:Int] {
		var amount = amount
		var change: [String: Int] = [:]
		let denominationValues = Array(currency.keys)
		for denominationValue in denominationValues.sorted().reversed(){
			let denominationName = currency[denominationValue]!
			change[denominationName] = amount / denominationValue
			amount = amount % denominationValue
		}
		return change
	}
}
