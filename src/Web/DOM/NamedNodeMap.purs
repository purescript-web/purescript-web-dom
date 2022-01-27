module Web.DOM.NamedNodeMap
  ( module Exports
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
import Web.DOM.Internal.Types (NamedNodeMap, Attr)
import Web.DOM.Internal.Types (NamedNodeMap) as Exports

foreign import getAttributes :: NamedNodeMap -> Effect (Array Attr)

foreign import getNamedItem :: NamedNodeMap -> String -> Effect Attr

foreign import getNamedItemNS :: NamedNodeMap -> String -> Effect Attr

foreign import setNamedItem :: NamedNodeMap -> Attr -> Effect Unit

foreign import setNamedItemNS :: NamedNodeMap -> Attr -> Effect Unit

foreign import removeNamedItem :: NamedNodeMap -> String -> Effect Unit

foreign import removeNamedItemNS :: NamedNodeMap -> String -> Effect Unit
