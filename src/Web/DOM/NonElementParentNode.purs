module Web.DOM.NonElementParentNode
  ( NonElementParentNode
  , fromDocument
  , fromDocumentFragment
  , getElementById
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.Document (Document)
import Web.DOM.DocumentFragment (DocumentFragment)
import Web.DOM.Element (Element, ElementId)

foreign import data NonElementParentNode :: Type

fromDocument :: Document -> NonElementParentNode
fromDocument = unsafeCoerce

fromDocumentFragment :: DocumentFragment -> NonElementParentNode
fromDocumentFragment = unsafeCoerce

-- | The first element within node's descendants with a matching ID, or null if
-- | no such element exists.
foreign import _getElementById :: ElementId -> NonElementParentNode -> Effect (Nullable Element)

getElementById :: ElementId -> NonElementParentNode -> Effect (Maybe Element)
getElementById eid = map toMaybe <<< _getElementById eid
