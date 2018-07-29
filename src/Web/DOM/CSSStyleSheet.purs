module Web.DOM.CSSStyleSheet
  ( module Exports
  , disabled
  , setDisabled
  , toggleDisabled
  , href
  , ownerNode
  , parentStyleSheet
  , title
  , typeString
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Web.DOM.Internal.Types (CSSStyleSheet) as Exports
import Web.DOM.Internal.Types (CSSStyleSheet, Element)

foreign import disabled :: CSSStyleSheet -> Boolean

foreign import setDisabled :: Boolean -> CSSStyleSheet -> Effect Unit

foreign import toggleDisabled :: CSSStyleSheet -> Effect Boolean

href :: CSSStyleSheet -> Maybe String
href = toMaybe <<< _href

ownerNode :: CSSStyleSheet -> Maybe Element
ownerNode = toMaybe <<< _ownerNode

parentStyleSheet :: CSSStyleSheet -> Maybe CSSStyleSheet
parentStyleSheet = toMaybe <<< _parentStyleSheet

title :: CSSStyleSheet -> Maybe String
title = toMaybe <<< _title

typeString :: CSSStyleSheet -> Maybe String
typeString = toMaybe <<< _type

foreign import _href :: CSSStyleSheet -> Nullable String
foreign import _ownerNode :: CSSStyleSheet -> Nullable Element
foreign import _parentStyleSheet :: CSSStyleSheet -> Nullable CSSStyleSheet
foreign import _title :: CSSStyleSheet -> Nullable String
foreign import _type :: CSSStyleSheet -> Nullable String
