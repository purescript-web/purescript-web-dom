module Web.DOM.Text where

import Effect (Effect)

foreign import data Text :: Type

foreign import splitText :: Int -> Text -> Effect Text

foreign import wholeText :: Text -> Effect String
