module Web.DOM.NamespaceURI where

import Prelude

import Data.Newtype (class Newtype)

newtype NamespaceURI = NamespaceURI String

derive instance Newtype NamespaceURI _
derive newtype instance Eq NamespaceURI
derive newtype instance Ord NamespaceURI
