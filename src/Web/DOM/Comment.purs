module Web.DOM.Comment where

import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.CharacterData (CharacterData)

foreign import data Comment :: Type

toCharacterData :: Comment -> CharacterData
toCharacterData = unsafeCoerce
