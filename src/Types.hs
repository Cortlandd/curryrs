-- |
-- Definitions of each FFI type that can be used in Rust. These are
-- standardized accross the Rust and Haskell Curryrs library for easy
-- translation of function headers between the two.
module Types (
    module Foreign.C.Types
  , module Foreign.C.String
  , Chr
  , Str
  , U8
  , U16
  , U32
  , U64
  , I8
  , I16
  , I32
  , I64
  , F32
  , F64
  , Boolean
  ) where

import Foreign.C.Types
import Foreign.C.String

-- We are only defining types that map to Rust types here
-- We don't need the full array of C types in Rust

-- |
-- Used to represent Char in both languages
type Chr = CChar

-- |
-- Used to represent Strings in both languages
type Str = CString

-- |
-- Used to represent 8 bit unsigned numbers in both languages
type U8  = CUChar

-- |
-- Used to represent 16 bit unsigned numbers in both languages
type U16 = CUShort

-- |
-- Used to represent 32 bit unsigned numbers in both languages
type U32 = CUInt

-- |
-- Used to represent 64 bit unsigned numbers in both languages
type U64 = CULong

-- |
-- Used to represent 8 bit signed numbers in both languages
type I8  = CSChar

-- |
-- Used to represent 16 bit signed numbers in both languages
type I16 = CShort

-- |
-- Used to represent 32 bit signed numbers in both languages
type I32 = CInt

-- |
-- Used to represent 64 bit signed numbers in both languages
type I64 = CLong

-- |
-- Used to represent 32 bit floating point numbers in both languages
type F32 = CFloat

-- |
-- Used to represent 64 bit floating point numbers in both languages
type F64 = CDouble

-- |
-- Used to represent Booleans in both languages
type Boolean = CUChar
