module Web.DOM.ShadowRoot
  ( ShadowRoot
  , ShadowRootMode (..)
  , host
  , mode
  , toNode
  ) where

import Prelude
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.Internal.Types (Element, Node)

foreign import data ShadowRoot :: Type

data ShadowRootMode = Open | Closed

instance showShadowRootMode :: Show ShadowRootMode where
  show Open = "open"
  show Closed = "closed"

mode :: ShadowRoot -> Maybe ShadowRootMode
mode = modeFromString <<< _mode

foreign import host :: ShadowRoot -> Effect Element

toNode :: ShadowRoot -> Node
toNode = unsafeCoerce

foreign import _mode :: ShadowRoot -> String

modeFromString :: String -> Maybe ShadowRootMode
modeFromString m = case m of
  "open" -> Just Open
  "closed" -> Just Closed
  _ -> Nothing
