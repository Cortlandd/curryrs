module Curryrs where

import Foreign.C.Types

foreign import ccall "double_input" doubleInput :: CInt -> CInt
