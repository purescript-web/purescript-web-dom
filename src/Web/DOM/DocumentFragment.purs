module Web.DOM.DocumentFragment where

import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.Internal.Types (Node)
import Web.DOM.NonElementParentNode (NonElementParentNode)
import Web.DOM.ParentNode (ParentNode)

foreign import data DocumentFragment :: Type

toChildNode :: DocumentFragment -> Node
toChildNode = unsafeCoerce

toParentNode :: DocumentFragment -> ParentNode
toParentNode = unsafeCoerce

toNonElementParentNode :: DocumentFragment -> NonElementParentNode
toNonElementParentNode = unsafeCoerce
