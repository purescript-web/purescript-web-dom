module Web.DOM.StyleSheetList
  ( module Exports
  , length
  , item
  , toArray
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Web.DOM.Document (Document)
import Web.DOM.Internal.Types (CSSStyleSheet, StyleSheetList)
import Web.DOM.Internal.Types (StyleSheetList) as Exports

-- | The number of items in a StyleSheetList.
foreign import length :: StyleSheetList -> Effect Int

-- | The elements of a NodeList represented in an array.
foreign import toArray :: StyleSheetList -> Effect (Array CSSStyleSheet)

-- | The item in a StyleSheetList at the specified index, or Nothing if no such
-- | node exists.
item :: Int -> StyleSheetList -> Effect (Maybe CSSStyleSheet)
item i = map toMaybe <<< _item i

foreign import _item :: Int -> StyleSheetList -> Effect (Nullable CSSStyleSheet)
