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
import Web.DOM.Internal.Types (NamedNodeMap, Attr)
import Web.DOM.Internal.Types (NamedNodeMap) as Exports

foreign import length :: NamedNodeMap -> Effect Int

foreign import getAttributes :: NamedNodeMap -> Effect (Array Attr)

foreign import getNamedItem :: String -> NamedNodeMap -> Effect Attr

foreign import getNamedItemNS :: String -> NamedNodeMap -> Effect Attr

foreign import setNamedItem :: Attr -> NamedNodeMap -> Effect Unit

foreign import setNamedItemNS :: Attr -> NamedNodeMap -> Effect Unit

foreign import removeNamedItem :: String -> NamedNodeMap -> Effect Unit

foreign import removeNamedItemNS :: String -> NamedNodeMap -> Effect Unit
