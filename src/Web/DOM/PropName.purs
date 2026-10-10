module Web.DOM.PropName where

import Prelude

import Data.Newtype (class Newtype)

-- | A wrapper for property names.
-- |
-- | The phantom type `value` describes the type of value which this property
-- | requires.
newtype PropName :: Type -> Type
newtype PropName value = PropName String

derive instance newtypePropName :: Newtype (PropName value) _
derive newtype instance eqPropName :: Eq (PropName value)
derive newtype instance ordPropName :: Ord (PropName value)
