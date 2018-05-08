module Web.DOM.ProcessingInstruction where

import Effect (Effect)

foreign import data ProcessingInstruction :: Type

foreign import target :: ProcessingInstruction -> Effect String
