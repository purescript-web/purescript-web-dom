module Web.DOM.ElementName where

import Prelude

import Data.Newtype (class Newtype)

-- | A wrapper for element names.
newtype ElementName = ElementName String

derive instance newtypeElementName :: Newtype ElementName _
derive newtype instance eqElementName :: Eq ElementName
derive newtype instance ordElementName :: Ord ElementName
