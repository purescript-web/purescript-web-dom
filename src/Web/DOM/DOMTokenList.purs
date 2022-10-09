module Web.DOM.DOMTokenList
  ( DOMTokenList
  , add
  , remove
  , contains
  , toggle
  , toggleForce
  , tokens
  , replace
  , supports
  , setValue
  , getValue
  , item
  ) where

import Prelude

import Effect (Effect)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

foreign import data DOMTokenList :: Type

foreign import add :: DOMTokenList -> String -> Effect Unit

foreign import remove :: DOMTokenList -> String -> Effect Unit

foreign import contains :: DOMTokenList -> String -> Effect Boolean

foreign import toggle :: DOMTokenList -> String -> Effect Boolean

foreign import toggleForce :: DOMTokenList -> String -> Boolean -> Effect Boolean

foreign import tokens :: DOMTokenList -> Effect (Array String)

foreign import replace :: DOMTokenList -> String -> String -> Effect Unit

foreign import supports :: DOMTokenList -> String -> Effect Boolean

foreign import setValue :: DOMTokenList -> String -> Effect Unit

foreign import getValue :: DOMTokenList -> Effect String

foreign import _item :: DOMTokenList -> Int -> Effect (Nullable String)

item :: DOMTokenList -> Int -> Effect (Maybe String)
item index = map toMaybe <<< _item index
