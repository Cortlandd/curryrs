//! Contains Type Equivalency for Haskell Types

pub use std::os::raw::{
	c_char,
	c_uchar,
	c_ushort,
	c_uint,
	c_ulong,
	c_schar,
	c_short,
	c_int,
	c_long,
	c_float,
	c_double
};

/// FFI Version of char
pub type Boolean = c_uchar;

/// FFI Version of char
pub type Chr = c_char;

/// FFI version of str
pub type Str = *const c_char;

/// FFI version of u8
pub type U8  = c_uchar;

/// FFI version of u16
pub type U16 = c_ushort;

/// FFI version of u32
pub type U32 = c_uint;

/// FFI version of u64
pub type U64 = c_ulong;

/// FFI version of i8
pub type I8  = c_schar;

/// FFI version of i16
pub type I16 = c_short;

/// FFI version of i32
pub type I32 = c_int;

/// FFI version of i64
pub type I64 = c_long;

/// FFI version of f32
pub type F32 = c_float;

/// FFI version of f64
pub type F64 = c_double;
