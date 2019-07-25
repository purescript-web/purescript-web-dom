module Web.DOM.Element
  ( module Exports
  , fromNode
  , fromChildNode
  , fromNonDocumentTypeChildNode
  , fromParentNode
  , fromEventTarget
  , toNode
  , toChildNode
  , toNonDocumentTypeChildNode
  , toParentNode
  , toEventTarget
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
  , ScrollToOptions
  , ScrollBehavior
  , ScrollAlignment
  , scroll
  , scrollTo
  , scrollBy
  , ScrollIntoViewOptions
  , scrollIntoView
  , scrollWidth
  , scrollHeight
  , clientTop
  , clientLeft
  , clientWidth
  , clientHeight
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe, toNullable)
import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.ChildNode (ChildNode)
import Web.DOM.Internal.Types (Element) as Exports
import Web.DOM.Internal.Types (Element, HTMLCollection, Node)
import Web.DOM.NonDocumentTypeChildNode (NonDocumentTypeChildNode)
import Web.DOM.ParentNode (ParentNode)
import Web.Event.EventTarget (EventTarget)
import Web.Internal.FFI (unsafeReadProtoTagged)

fromNode :: Node -> Maybe Element
fromNode = unsafeReadProtoTagged "Element"

fromChildNode :: ChildNode -> Maybe Element
fromChildNode = unsafeReadProtoTagged "Element"

fromNonDocumentTypeChildNode :: NonDocumentTypeChildNode -> Maybe Element
fromNonDocumentTypeChildNode = unsafeReadProtoTagged "Element"

fromParentNode :: ParentNode -> Maybe Element
fromParentNode = unsafeReadProtoTagged "Element"

fromEventTarget :: EventTarget -> Maybe Element
fromEventTarget = unsafeReadProtoTagged "Element"

toNode :: Element -> Node
toNode = unsafeCoerce

toChildNode :: Element -> ChildNode
toChildNode = unsafeCoerce

toNonDocumentTypeChildNode :: Element -> NonDocumentTypeChildNode
toNonDocumentTypeChildNode = unsafeCoerce

toParentNode :: Element -> ParentNode
toParentNode = unsafeCoerce

toEventTarget :: Element -> EventTarget
toEventTarget = unsafeCoerce

namespaceURI :: Element -> Maybe String
namespaceURI = toMaybe <<< _namespaceURI

prefix :: Element -> Maybe String
prefix = toMaybe <<< _prefix

foreign import _namespaceURI :: Element -> Nullable String
foreign import _prefix :: Element -> Nullable String
foreign import localName :: Element -> String
foreign import tagName :: Element -> String

foreign import id :: Element -> Effect String
foreign import setId :: String -> Element -> Effect Unit
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

data ScrollBehavior = Auto | Smooth

stringScrollBehavior :: ScrollBehavior -> String
stringScrollBehavior Auto = "auto"
stringScrollBehavior Smooth = "smooth"

type ScrollToOptions =
  { top :: Number
  , left :: Number
  , behavior :: ScrollBehavior
  }

type ScrollToOptions_ =
  { top :: Number
  , left :: Number
  , behavior :: String
  }

foreign import _scroll :: Element -> ScrollToOptions_ -> Effect Unit

scroll :: Element -> ScrollToOptions -> Effect Unit
scroll elem _opts = _scroll elem opts
  where
    opts = let { top,left, behavior } = _opts
           in { top, left, behavior: stringScrollBehavior behavior }

foreign import _scrollTo :: Element -> ScrollToOptions_ -> Effect Unit

scrollTo :: Element -> ScrollToOptions -> Effect Unit
scrollTo elem _opts = _scrollTo elem opts
  where
    opts = let { top,left, behavior } = _opts
           in { top, left, behavior: stringScrollBehavior behavior }

foreign import _scrollBy :: Element -> ScrollToOptions_ -> Effect Unit

scrollBy :: Element -> ScrollToOptions -> Effect Unit
scrollBy elem _opts = _scrollBy elem opts
  where
    opts = let { top,left, behavior } = _opts
           in { top, left, behavior: stringScrollBehavior behavior }

data ScrollAlignment = Start | Center | End | Nearest

stringScrollAlignment :: ScrollAlignment -> String
stringScrollAlignment Start = "start"
stringScrollAlignment Center = "center"
stringScrollAlignment End = "end"
stringScrollAlignment Nearest = "nearest"

type ScrollIntoViewOptions =
  { behavior :: ScrollBehavior
  , block :: ScrollAlignment
  , inline :: ScrollAlignment
  }

type ScrollIntoViewOptions_ =
  { behavior :: String
  , block :: String
  , inline :: String
  }

foreign import _scrollIntoView :: Element -> ScrollIntoViewOptions_ -> Effect Unit

scrollIntoView :: Element -> ScrollIntoViewOptions -> Effect Unit
scrollIntoView elem _opts = _scrollIntoView elem opts
  where
    opts = let { behavior, block, inline } = _opts
            in { behavior: stringScrollBehavior behavior
               , block: stringScrollAlignment block
               , inline: stringScrollAlignment inline
               }

foreign import scrollWidth :: Element -> Effect Number
foreign import scrollHeight :: Element -> Effect Number
foreign import clientTop :: Element -> Effect Number
foreign import clientLeft :: Element -> Effect Number
foreign import clientWidth :: Element -> Effect Number
foreign import clientHeight :: Element -> Effect Number
