module Web.DOM.NamedNodeMap
  ( module Exports
  , length
  , getAttributes
  , getNamedItem
  , getNamedItemNS
  , setNamedItem
  , setNamedItemNS
  , removeNamedItem
  , removeNamedItemNS
  ) where

import Prelude

import Effect (Effect)
import Web.DOM.AttrName (AttrName)
import Web.DOM.Internal.Types (NamedNodeMap) as Exports
import Web.DOM.Internal.Types (NamedNodeMap, Attr)
import Web.DOM.Namespace (Namespace)

foreign import length :: NamedNodeMap -> Effect Int

foreign import getAttributes :: NamedNodeMap -> Effect (Array Attr)

foreign import getNamedItem :: AttrName -> NamedNodeMap -> Effect Attr

foreign import getNamedItemNS :: Namespace -> AttrName -> NamedNodeMap -> Effect Attr

foreign import setNamedItem :: Attr -> NamedNodeMap -> Effect Unit

foreign import setNamedItemNS :: Attr -> NamedNodeMap -> Effect Unit

foreign import removeNamedItem :: AttrName -> NamedNodeMap -> Effect Unit

foreign import removeNamedItemNS :: Namespace -> AttrName -> NamedNodeMap -> Effect Unit
