module Web.DOM.NonElementParentNode
  ( NonElementParentNode
  , getElementById
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Web.DOM.Element (Element)

foreign import data NonElementParentNode :: Type

-- | The first element within node's descendants with a matching ID, or null if
-- | no such element exists.
foreign import _getElementById :: String -> NonElementParentNode -> Effect (Nullable Element)

-- | Get a DOM elemement by its id.
-- |
-- | This example shows how to call `getElementById` to get the "root" element
-- | of an HTML5 DOM.
-- |
-- | ```purescript
-- | import Web.HTML (window)                  -- from purescript-web-html
-- | import Web.HTML.Window (document)         -- from purescript-web-html
-- | import Web.HTML.HTMLDocument (toDocument) -- from purescript-web-html
-- | import Web.DOM.Document (toNonElementParentNode)
-- |
-- | do
-- |     n <- map toNonElementParentNode $ map toDocument $ document =<< window
-- |     e <- getElementById "root" n
-- | ```
getElementById :: String -> NonElementParentNode -> Effect (Maybe Element)
getElementById eid = map toMaybe <<< _getElementById eid
