module Web.DOM.ClassName where

import Prelude

import Data.Newtype (class Newtype)

-- | A wrapper for strings which are used as CSS classes.
newtype ClassName = ClassName String

derive instance newtypeClassName :: Newtype ClassName _
derive newtype instance eqClassName :: Eq ClassName
derive newtype instance ordClassName :: Ord ClassName
