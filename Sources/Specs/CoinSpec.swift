import XTest
import Core

class CoinSpec: Group {
	let myFirstTest = Test { assert in 
		assert.that(CoinMaker.getChange(), equals: 0)
	}
}
