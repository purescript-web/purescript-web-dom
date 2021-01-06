module Web.DOM.ShadowRoot
  ( ShadowRoot
  , ShadowRootMode (..)
  , attachShadow
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

attachShadow :: ShadowRootMode -> Element -> Effect ShadowRoot
attachShadow = _attachShadow <<< modeToProps

mode :: ShadowRoot -> Maybe ShadowRootMode
mode = modeFromString <<< _mode

foreign import host :: ShadowRoot -> Effect Element

toNode :: ShadowRoot -> Node
toNode = unsafeCoerce

type ShadowRootProps = { mode :: String }

foreign import _attachShadow :: ShadowRootProps -> Element -> Effect ShadowRoot
foreign import _mode :: ShadowRoot -> String

modeToProps :: ShadowRootMode -> ShadowRootProps
modeToProps m = { mode: (show m) }

modeFromString :: String -> Maybe ShadowRootMode
modeFromString m = case m of
  "open" -> Just Open
  "closed" -> Just Closed
  _ -> Nothing
