module Web.DOM.AttrLocalName where

import Prelude

import Data.Newtype (class Newtype)

-- | A wrapper for attribute names.
newtype AttrLocalName = AttrLocalName String

derive instance newtypeAttrLocalName :: Newtype AttrLocalName _
derive newtype instance eqAttrLocalName :: Eq AttrLocalName
derive newtype instance ordAttrLocalName :: Ord AttrLocalName
