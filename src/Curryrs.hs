{-# LANGUAGE ForeignFunctionInterface #-}
module Curryrs where

import Foreign.C.Types

foreign import ccall "double_input" double_input :: CInt -> CInt
