module Web.Event.EventTarget where

import Prelude

import Control.Monad.Except (except)
import Data.Bifunctor (lmap)
import Data.Either (Either(..))
import Effect (Effect)
import Foreign (F, Foreign, ForeignError(..))
import Web.Event.Event (Event, EventType)

-- | A DOM item that can emit events.
foreign import data EventTarget :: Type

read :: Foreign -> F EventTarget
read = except <<< lmap (pure <<< ForeignError) <<< _readEventTarget Left Right

foreign import _readEventTarget
  :: (forall a b. a -> Either a b)
  -> (forall a b. b -> Either a b)
  -> Foreign
  -> Either String EventTarget

-- | A boxed function that can be used as an event listener. This is necessary
-- | due to the underlying implementation of Effect functions.
foreign import data EventListener :: Type

-- | Creates an EventListener from a normal PureScript Effect function.
-- |
-- | This function itself is effectful as otherwise it would break referential
-- | transparency - `eventListener f /= eventListener f`. This is worth noting
-- | as you can only remove the exact event listener value that was added for
-- | an `EventTarget`.
foreign import eventListener
  :: forall a
   . (Event -> Effect a)
  -> Effect EventListener

-- | Adds a listener to an event target. The boolean argument indicates whether
-- | the listener should be added for the "capture" phase.
foreign import addEventListener
  :: EventType
  -> EventListener
  -> Boolean
  -> EventTarget
  -> Effect Unit

-- | Removes a listener to an event target. The boolean argument indicates
-- | whether the listener should be removed for the "capture" phase.
foreign import removeEventListener
  :: EventType
  -> EventListener
  -> Boolean
  -> EventTarget
  -> Effect Unit

-- | Dispatches an event from an event target.
foreign import dispatchEvent
  :: Event
  -> EventTarget
  -> Effect Boolean
