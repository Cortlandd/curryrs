{-# LANGUAGE ForeignFunctionInterface #-}
module Curryrs where

import Foreign.C.Types

foreign import ccall unsafe "double_input" double_input :: CInt -> IO CInt
