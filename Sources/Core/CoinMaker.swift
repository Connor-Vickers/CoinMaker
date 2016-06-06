public class CoinMaker{ 
	static public func getChange(amount: Int) -> [String:Int] {
		let change = ["pennies": amount, "nickels": 0, "dimes": 0, "quarters": 0]
		return change
	}
}
