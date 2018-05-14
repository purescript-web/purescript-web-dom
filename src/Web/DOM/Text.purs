module Web.DOM.Text where

import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.CharacterData (CharacterData)
import Web.DOM.ChildNode (ChildNode)
import Web.DOM.Internal.Types (Node)
import Web.DOM.NonDocumentTypeChildNode (NonDocumentTypeChildNode)

foreign import data Text :: Type

toCharacterData :: Text -> CharacterData
toCharacterData = unsafeCoerce

toChildNode :: Text -> ChildNode
toChildNode = unsafeCoerce

toNonDocumentTypeChildNode :: Text -> NonDocumentTypeChildNode
toNonDocumentTypeChildNode = unsafeCoerce

toNode :: Text -> Node
toNode = unsafeCoerce

foreign import splitText :: Int -> Text -> Effect Text

foreign import wholeText :: Text -> Effect String
