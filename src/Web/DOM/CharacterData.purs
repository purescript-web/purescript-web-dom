module Web.DOM.CharacterData where

import Prelude

import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.Comment (Comment)
import Web.DOM.ProcessingInstruction (ProcessingInstruction)
import Web.DOM.Text (Text)

foreign import data CharacterData :: Type

fromText :: Text -> CharacterData
fromText = unsafeCoerce

fromProcessingInstruction :: ProcessingInstruction -> CharacterData
fromProcessingInstruction = unsafeCoerce

fromComment :: Comment -> CharacterData
fromComment = unsafeCoerce

foreign import data_ :: CharacterData -> Effect String

foreign import length :: CharacterData -> Effect Int

foreign import substringData :: Int -> Int -> CharacterData -> Effect String

foreign import appendData :: String -> CharacterData -> Effect Unit

foreign import insertData :: Int -> String -> CharacterData -> Effect Unit

foreign import deleteData :: Int -> Int -> CharacterData -> Effect Unit

foreign import replaceData :: Int -> Int -> String -> CharacterData -> Effect Unit
