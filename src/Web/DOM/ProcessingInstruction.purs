module Web.DOM.ProcessingInstruction where

import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.CharacterData (CharacterData)

foreign import data ProcessingInstruction :: Type

toCharacterData :: ProcessingInstruction -> CharacterData
toCharacterData = unsafeCoerce

foreign import target :: ProcessingInstruction -> Effect String
