module Web.DOM.NonDocumentTypeChildNode
  ( NonDocumentTypeChildNode
  , fromElement
  , fromCharacterData
  , previousElementSibling
  , nextElementSibling
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.CharacterData (CharacterData)
import Web.DOM.Element (Element)

foreign import data NonDocumentTypeChildNode :: Type

fromElement :: Element -> NonDocumentTypeChildNode
fromElement = unsafeCoerce

fromCharacterData :: CharacterData -> NonDocumentTypeChildNode
fromCharacterData = unsafeCoerce

-- | The previous sibling that is an element, or Nothing if no such element exists.
previousElementSibling :: NonDocumentTypeChildNode -> Effect (Maybe Element)
previousElementSibling = map toMaybe <<< _previousElementSibling

foreign import _previousElementSibling :: NonDocumentTypeChildNode -> Effect (Nullable Element)

-- | The next sibling that is an element, or Nothing if no such element exists.
nextElementSibling :: NonDocumentTypeChildNode -> Effect (Maybe Element)
nextElementSibling = map toMaybe <<< _nextElementSibling

foreign import _nextElementSibling :: NonDocumentTypeChildNode -> Effect (Nullable Element)
