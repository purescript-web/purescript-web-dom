module Web.DOM.NonElementParentNode
  ( NonElementParentNode
  , getElementById
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Web.DOM.Element (Element)
import Web.DOM.ElementId (ElementId)

foreign import data NonElementParentNode :: Type

-- | The first element within node's descendants with a matching ID, or null if
-- | no such element exists.
foreign import _getElementById :: ElementId -> NonElementParentNode -> Effect (Nullable Element)

getElementById :: ElementId -> NonElementParentNode -> Effect (Maybe Element)
getElementById eid = map toMaybe <<< _getElementById eid
