module Web.DOM.MutationRecord
  ( MutationRecord
  , MutationRecordType(..)
  , typeString
  , type_
  , target
  , addedNodes
  , removedNodes
  , nextSibling
  , previousSibling
  , attributeName
  , attributeNamespace
  , oldValue
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Web.DOM.AttrName (AttrName)
import Web.DOM.NamespaceURI (NamespaceURI)
import Web.DOM.Node (Node)
import Web.DOM.NodeList (NodeList)

foreign import data MutationRecord :: Type

data MutationRecordType
  = MutationRecordAttributes
  | MutationRecordCharacterData
  | MutationRecordChildList

foreign import typeString :: MutationRecord -> Effect String

type_ :: Partial => MutationRecord -> Effect MutationRecordType
type_ = map stringToType <<< typeString
  where
  stringToType = case _ of
    "attributes" -> MutationRecordAttributes
    "characterData" -> MutationRecordCharacterData
    "childList" -> MutationRecordChildList

foreign import target :: MutationRecord -> Effect Node

foreign import addedNodes :: MutationRecord -> Effect NodeList

foreign import removedNodes :: MutationRecord -> Effect NodeList

foreign import _nextSibling :: MutationRecord -> Effect (Nullable Node)

nextSibling :: MutationRecord -> Effect (Maybe Node)
nextSibling = map toMaybe <<< _nextSibling

foreign import _previousSibling :: MutationRecord -> Effect (Nullable Node)

previousSibling :: MutationRecord -> Effect (Maybe Node)
previousSibling = map toMaybe <<< _previousSibling

foreign import _attributeName :: MutationRecord -> Effect (Nullable AttrName)

attributeName :: MutationRecord -> Effect (Maybe AttrName)
attributeName = map toMaybe <<< _attributeName

foreign import _attributeNamespace :: MutationRecord -> Effect (Nullable NamespaceURI)

attributeNamespace :: MutationRecord -> Effect (Maybe NamespaceURI)
attributeNamespace = map toMaybe <<< _attributeNamespace

foreign import _oldValue :: MutationRecord -> Effect (Nullable String)

oldValue :: MutationRecord -> Effect (Maybe String)
oldValue = map toMaybe <<< _oldValue
