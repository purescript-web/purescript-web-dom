module Web.DOM.CharacterData where

import Prelude

import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.ChildNode (ChildNode)
import Web.DOM.Internal.Types (Node)
import Web.DOM.NonDocumentTypeChildNode (NonDocumentTypeChildNode)

foreign import data CharacterData :: Type

toChildNode :: CharacterData -> ChildNode
toChildNode = unsafeCoerce

toNonDocumentTypeChildNode :: CharacterData -> NonDocumentTypeChildNode
toNonDocumentTypeChildNode = unsafeCoerce

toNode :: CharacterData -> Node
toNode = unsafeCoerce

foreign import data_ :: CharacterData -> Effect String

foreign import length :: CharacterData -> Effect Int

foreign import substringData :: Int -> Int -> CharacterData -> Effect String

foreign import appendData :: String -> CharacterData -> Effect Unit

foreign import insertData :: Int -> String -> CharacterData -> Effect Unit

foreign import deleteData :: Int -> Int -> CharacterData -> Effect Unit

foreign import replaceData :: Int -> Int -> String -> CharacterData -> Effect Unit
