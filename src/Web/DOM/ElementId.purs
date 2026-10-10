module Web.DOM.ElementId where

import Prelude

import Data.Newtype (class Newtype)

-- | A wrapper for strings which are used as element identifiers.
newtype ElementId = ElementId String

derive instance newtypeElementId :: Newtype ElementId _
derive newtype instance eqElementId :: Eq ElementId
derive newtype instance ordElementId :: Ord ElementId
