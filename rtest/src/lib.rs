#[macro_use]
extern crate curryrs;

use curryrs::*;

// Place each function you want exported into the safe_ffi! macro and it will
// export each one and place the pub extern for you!
safe_ffi! (

	fn double_input(x: I32) -> I32 {
		2 * x
	}

	fn square_input(x: U64) -> U64 {
		x * x
	}

	fn triple_input(x: U64) -> U64 {
		x * x * x
	}

);
