module Enchant.BinaryInputSource where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)
import Enchant.InputSource (InputSource)


newBinaryInputSource :: forall eff. String -> Eff (e :: Enchant | eff) EnchantBinaryInputSource
newBinaryInputSource = ffi ["identifier", ""] "new enchant.BinaryInputSource(identifier);"


instance inputSourceBinaryInputSource :: InputSource EnchantBinaryInputSource where
    getIdentifier = ffi ["base", ""] "base.identifier;"
    notifyStateChange = ffi ["base", "data", ""] "base.notifyStateChange(data);"


instance eventTargetBinaryInputSource :: EventTarget EnchantBinaryInputSource where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"
