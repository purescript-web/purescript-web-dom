module Web.DOM.Attr
  ( module Exports
  , namespaceURI
  , prefix
  , localName
  , name
  , getValue
  , setValue
  , ownerElement
  ) where

import Prelude

import Data.Maybe
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Web.DOM.Internal.Types (Attr) as Exports
import Web.DOM.Internal.Types (Attr, Element)


foreign import namespaceURI :: Attr -> Effect String

foreign import prefix :: Attr -> Effect String

foreign import localName :: Attr -> Effect String

foreign import name :: Attr -> Effect String

foreign import getValue :: Attr -> Effect String

foreign import setValue :: Attr -> String -> Effect Unit

-- | The element the attribute belongs to, unless the attribute is not (yet)
-- | attached to an element.
ownerElement :: Attr -> Effect (Maybe Element)
ownerElement = map toMaybe <<< _ownerElement

foreign import _ownerElement :: Attr -> Effect (Nullable Element)


