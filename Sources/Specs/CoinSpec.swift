import XTest
import Core

class CoinSpec: Group {
	let zeroTest = Test { assert in 
		let change = CoinMaker.getChange(amount: 0)
		assert.that(change["pennies"]!, equals: 0, message: "gives 0 pennies with 0 change")
	}
}
