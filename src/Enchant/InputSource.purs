module Enchant.InputSource where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)


newInputSource :: forall eff. String -> Eff (e :: Enchant | eff) EnchantInputSource
newInputSource = ffi ["identifier", ""] "new enchant.InputSource(identifier);"


class InputSource a where
    getIdentifier :: forall eff. a -> Eff (e :: Enchant | eff) String
    notifyStateChange :: forall eff. a -> EnchantData -> Eff (e :: Enchant | eff) Unit


instance inputSourceSelf :: InputSource EnchantInputSource where
    getIdentifier = ffi ["base", ""] "base.identifier;"
    notifyStateChange = ffi ["base", "data", ""] "base.notifyStateChange(data);"


instance eventTargetInputSource :: EventTarget EnchantInputSource where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"
