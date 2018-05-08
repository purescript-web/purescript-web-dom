module Web.DOM.DocumentType where

foreign import data DocumentType :: Type

foreign import name :: DocumentType -> String
foreign import publicId :: DocumentType -> String
foreign import systemId :: DocumentType -> String
