module Web.DOM.DocumentType where

import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.ChildNode (ChildNode)
import Web.DOM.Internal.Types (Node)

foreign import data DocumentType :: Type

toChildNode :: DocumentType -> ChildNode
toChildNode = unsafeCoerce

toNode :: DocumentType -> Node
toNode = unsafeCoerce

foreign import name :: DocumentType -> String
foreign import publicId :: DocumentType -> String
foreign import systemId :: DocumentType -> String
