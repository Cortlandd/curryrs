#![deny(missing_debug_implementations, missing_copy_implementations,
        trivial_casts, trivial_numeric_casts, unused_import_braces, unused_qualifications)]
//! Curryrs is a library made for bridging the gap between Rust and Haskell making it easy
//! to use code in from either language in the other.
pub mod macros;
mod types;
pub use types::*;
