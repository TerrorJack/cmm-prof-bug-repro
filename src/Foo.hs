{-# LANGUAGE GHCForeignImportPrim #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE UnliftedFFITypes #-}

module Foo where

import GHC.Exts

mySucc :: Int -> Int
mySucc (I# x) = I# (c_succ x)

foreign import prim "succ"
  c_succ :: Int# -> Int#
