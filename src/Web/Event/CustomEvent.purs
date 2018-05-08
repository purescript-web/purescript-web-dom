module Web.Event.CustomEvent where

import Foreign (F, Foreign, unsafeReadTagged)
import Unsafe.Coerce as U
import Web.Event.Event (Event)

foreign import data CustomEvent :: Type

toEvent :: CustomEvent -> Event
toEvent = U.unsafeCoerce

read :: Foreign -> F CustomEvent
read = unsafeReadTagged "CustomEvent"
