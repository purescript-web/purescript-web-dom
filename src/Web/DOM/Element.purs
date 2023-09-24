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
  , classList
  , setClassName
  , getElementsByTagName
  , getElementsByTagNameNS
  , getElementsByClassName
  , attributes
  , setAttribute
  , getAttribute
  , hasAttribute
  , removeAttribute
  , matches
  , closest
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
  , getBoundingClientRect
  , DOMRect
  , ShadowRootInit
  , attachShadow
  , AttrName(..)
  , ClassName(..)
  , ElementId(..)
  , PropName(..)
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Newtype (class Newtype)
import Data.Nullable (Nullable, toMaybe, toNullable)
import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.ChildNode (ChildNode)
import Web.DOM.DOMTokenList (DOMTokenList)
import Web.DOM.Internal.Types (Element) as Exports
import Web.DOM.Internal.Types (Element, HTMLCollection, Node, NamedNodeMap)
import Web.DOM.NonDocumentTypeChildNode (NonDocumentTypeChildNode)
import Web.DOM.ParentNode (QuerySelector) as Exports
import Web.DOM.ParentNode (ParentNode, QuerySelector)
import Web.DOM.ShadowRoot (ShadowRoot, ShadowRootMode)
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

foreign import id :: Element -> Effect ElementId
foreign import setId :: ElementId -> Element -> Effect Unit
foreign import className :: Element -> Effect ClassName
foreign import classList :: Element -> Effect DOMTokenList
foreign import setClassName :: ClassName -> Element -> Effect Unit

foreign import getElementsByTagName :: String -> Element -> Effect HTMLCollection

getElementsByTagNameNS :: Maybe String -> String -> Element -> Effect HTMLCollection
getElementsByTagNameNS = _getElementsByTagNameNS <<< toNullable

foreign import _getElementsByTagNameNS :: Nullable String -> String -> Element -> Effect HTMLCollection

foreign import getElementsByClassName :: ClassName -> Element -> Effect HTMLCollection

foreign import attributes :: Element -> Effect NamedNodeMap

foreign import setAttribute :: AttrName -> String -> Element -> Effect Unit

getAttribute :: AttrName -> Element -> Effect (Maybe String)
getAttribute attr = map toMaybe <<< _getAttribute attr

foreign import _getAttribute :: AttrName -> Element -> Effect (Nullable String)
foreign import hasAttribute :: AttrName -> Element -> Effect Boolean
foreign import removeAttribute :: AttrName -> Element -> Effect Unit

foreign import matches :: QuerySelector -> Element -> Effect Boolean

closest :: QuerySelector -> Element -> Effect (Maybe Element)
closest qs = map toMaybe <<< _closest qs

foreign import _closest :: QuerySelector -> Element -> Effect (Nullable Element)

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

type DOMRect =
  { top :: Number
  , right :: Number
  , bottom :: Number
  , left :: Number
  , width :: Number
  , height :: Number
  , x :: Number
  , y :: Number
  }

foreign import getBoundingClientRect :: Element -> Effect DOMRect

type ShadowRootInit = {
  mode :: ShadowRootMode,
  delegatesFocus :: Boolean
}

attachShadow :: ShadowRootInit -> Element -> Effect ShadowRoot
attachShadow = _attachShadow <<< initToProps

type ShadowRootProps = {
  mode :: String,
  delegatesFocus :: Boolean
}

initToProps :: ShadowRootInit -> ShadowRootProps
initToProps init = {
  mode: show init.mode,
  delegatesFocus: init.delegatesFocus
}

foreign import _attachShadow :: ShadowRootProps -> Element -> Effect ShadowRoot

-- | A wrapper for property names.
-- |
-- | The phantom type `value` describes the type of value which this property
-- | requires.
newtype PropName :: Type -> Type
newtype PropName value = PropName String

derive instance newtypePropName :: Newtype (PropName value) _
derive newtype instance eqPropName :: Eq (PropName value)
derive newtype instance ordPropName :: Ord (PropName value)

-- | A wrapper for attribute names.
newtype AttrName = AttrName String

derive instance newtypeAttrName :: Newtype AttrName _
derive newtype instance eqAttrName :: Eq AttrName
derive newtype instance ordAttrName :: Ord AttrName

-- | A wrapper for strings which are used as CSS classes.
newtype ClassName = ClassName String

derive instance newtypeClassName :: Newtype ClassName _
derive newtype instance eqClassName :: Eq ClassName
derive newtype instance ordClassName :: Ord ClassName

-- | A wrapper for strings which are used as element identifiers.
newtype ElementId = ElementId String

derive instance newtypeElementId :: Newtype ElementId _
derive newtype instance eqElementId :: Eq ElementId
derive newtype instance ordElementId :: Ord ElementId
