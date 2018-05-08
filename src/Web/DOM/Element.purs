module Web.DOM.Element
  ( module Exports
  , read
  , ElementId(..)
  , namespaceURI
  , prefix
  , localName
  , tagName
  , id
  , setId
  , className
  , setClassName
  , getElementsByTagName
  , getElementsByTagNameNS
  , getElementsByClassName
  , setAttribute
  , getAttribute
  , hasAttribute
  , removeAttribute
  , scrollTop
  , setScrollTop
  , scrollLeft
  , setScrollLeft
  , scrollWidth
  , scrollHeight
  , clientTop
  , clientLeft
  , clientWidth
  , clientHeight
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Newtype (class Newtype)
import Data.Nullable (Nullable, toMaybe, toNullable)
import Effect (Effect)
import Foreign (Foreign, F)
import Web.DOM.Internal.Types (Element, HTMLCollection)
import Web.DOM.Internal.Types (Element) as Exports
import Web.DOM.Internal.FFI (unsafeReadProtoTagged)

newtype ElementId = ElementId String

derive instance newtypeElementId :: Newtype ElementId _
derive newtype instance eqElementId :: Eq ElementId
derive newtype instance oOrdElementId :: Ord ElementId

read :: Foreign -> F Element
read = unsafeReadProtoTagged "Element"

namespaceURI :: Element -> Maybe String
namespaceURI = toMaybe <<< _namespaceURI

prefix :: Element -> Maybe String
prefix = toMaybe <<< _prefix

foreign import _namespaceURI :: Element -> Nullable String
foreign import _prefix :: Element -> Nullable String
foreign import localName :: Element -> String
foreign import tagName :: Element -> String

foreign import id :: Element -> Effect ElementId
foreign import setId :: ElementId -> Element -> Effect Unit
foreign import className :: Element -> Effect String
foreign import setClassName :: String -> Element -> Effect Unit

foreign import getElementsByTagName :: String -> Element -> Effect HTMLCollection

getElementsByTagNameNS :: Maybe String -> String -> Element -> Effect HTMLCollection
getElementsByTagNameNS = _getElementsByTagNameNS <<< toNullable

foreign import _getElementsByTagNameNS :: Nullable String -> String -> Element -> Effect HTMLCollection

foreign import getElementsByClassName :: String -> Element -> Effect HTMLCollection

foreign import setAttribute :: String -> String -> Element -> Effect Unit

getAttribute :: String -> Element -> Effect (Maybe String)
getAttribute attr = map toMaybe <<< _getAttribute attr

foreign import _getAttribute :: String -> Element -> Effect (Nullable String)
foreign import hasAttribute :: String -> Element -> Effect Boolean
foreign import removeAttribute :: String -> Element -> Effect Unit

foreign import scrollTop :: Element -> Effect Number
foreign import setScrollTop :: Number -> Element -> Effect Unit

foreign import scrollLeft :: Element -> Effect Number
foreign import setScrollLeft :: Number -> Element -> Effect Unit

foreign import scrollWidth :: Element -> Effect Number
foreign import scrollHeight :: Element -> Effect Number
foreign import clientTop :: Element -> Effect Number
foreign import clientLeft :: Element -> Effect Number
foreign import clientWidth :: Element -> Effect Number
foreign import clientHeight :: Element -> Effect Number
