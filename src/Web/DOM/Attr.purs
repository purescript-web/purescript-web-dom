module Web.DOM.Attr
  ( module Exports
  , namespaceURI
  , prefix
  , localName
  , getValue
  , setValue
  , ownerElement
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Web.DOM.AttrName (AttrName)
import Web.DOM.Internal.Types (Attr) as Exports
import Web.DOM.Internal.Types (Attr, Element)
import Web.DOM.NamespacePrefix (NamespacePrefix)
import Web.DOM.NamespaceURI (NamespaceURI)

foreign import _namespaceURI :: Attr -> Nullable NamespaceURI

namespaceURI :: Attr -> Maybe NamespaceURI
namespaceURI attr = toMaybe (_namespaceURI attr)

foreign import _prefix :: Attr -> Nullable NamespacePrefix

prefix :: Attr -> Maybe NamespacePrefix
prefix attr = toMaybe (_prefix attr)

foreign import localName :: Attr -> AttrName

foreign import getValue :: Attr -> Effect String

foreign import setValue :: Attr -> String -> Effect Unit

foreign import _ownerElement :: Attr -> Effect (Nullable Element)

-- | The element the attribute belongs to, unless the attribute is not (yet)
-- | attached to an element.
ownerElement :: Attr -> Effect (Maybe Element)
ownerElement attr = map toMaybe (_ownerElement attr)
