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
  , fromBoolean
  , ConversionError
  ) where

import Foreign.C.Types
import Foreign.C.String
import Control.Monad.Except
import Control.Monad.Error

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

-- Boolean
type Boolean = CUChar

-- This method tries to to turn a number returned
-- by FFI into a Bool. Since We are coming from
-- FFI this is wrapped in an Either in case things
-- go wrong but this shouldn't be the case if the Curryrs
-- library is used properly
fromBoolean :: Boolean -> Either ConversionError Bool
fromBoolean x = case x of
  0 -> (Right False)
  1 -> (Right True)
  _ -> (Left NonBoolean)

data ConversionError = NonBoolean
  deriving Eq

instance Show ConversionError where
  show NonBoolean = "Failed to extract a boolean value in the use of fromBoolean. Number was not 0 or 1"
