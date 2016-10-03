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
  ) where

import Foreign.C.Types
import Foreign.C.String

-- We are only defining types that map to Rust types here
-- We don't need the full array of C types in Rust

-- String and Character Types
type Chr = CChar
type Str = CString

-- Unsigned Integer Types
type U8  = CUChar
type U16 = CUShort
type U32 = CUInt
type U64 = CULong

-- Signed Integer Types
type I8  = CSChar
type I16 = CShort
type I32 = CInt
type I64 = CLong

-- Floating Point Types
type F32 = CFloat
type F64 = CDouble
