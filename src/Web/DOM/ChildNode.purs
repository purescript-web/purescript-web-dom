module Web.DOM.ChildNode where

import Prelude

import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.CharacterData (CharacterData)
import Web.DOM.DocumentType (DocumentType)
import Web.DOM.Element (Element)

foreign import data ChildNode :: Type

fromDocumentType :: DocumentType -> ChildNode
fromDocumentType = unsafeCoerce

fromElement :: Element -> ChildNode
fromElement = unsafeCoerce

fromCharacterData :: CharacterData -> ChildNode
fromCharacterData = unsafeCoerce

-- | Removes the node from its parent.
foreign import remove :: ChildNode -> Effect Unit
