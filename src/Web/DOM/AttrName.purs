module Web.DOM.AttrName where

import Prelude

import Data.Newtype (class Newtype)

-- | A wrapper for attribute names.
newtype AttrName = AttrName String

derive instance newtypeAttrName :: Newtype AttrName _
derive newtype instance eqAttrName :: Eq AttrName
derive newtype instance ordAttrName :: Ord AttrName
