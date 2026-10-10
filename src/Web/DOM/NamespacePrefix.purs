module Web.DOM.NamespacePrefix where

import Prelude

import Data.Newtype (class Newtype)

newtype NamespacePrefix = NamespacePrefix String

derive instance Newtype NamespacePrefix _
derive newtype instance Eq NamespacePrefix
derive newtype instance Ord NamespacePrefix
