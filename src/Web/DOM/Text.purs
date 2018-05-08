module Web.DOM.Text where

import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.CharacterData (CharacterData)

foreign import data Text :: Type

toCharacterData :: Text -> CharacterData
toCharacterData = unsafeCoerce

foreign import splitText :: Int -> Text -> Effect Text

foreign import wholeText :: Text -> Effect String
