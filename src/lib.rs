#![deny(missing_docs, missing_debug_implementations, missing_copy_implementations,
        trivial_casts, trivial_numeric_casts, unsafe_code, unused_import_braces,
        unused_qualifications)]
//! Curryrs is a library made for bridging the gap between Rust and Haskell making it easy
//! to use code in from either language in the other.
extern crate libc;

/// t
#[no_mangle]
pub extern "C" fn double_input(x: i32) -> i32 {
    2 * x
}
