module Enchant.ActionEventTarget where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)


newActionEventTarget :: forall eff. Eff (e :: Enchant | eff) EnchantActionEventTarget
newActionEventTarget = ffi [""] "new enchant.EventTarget();"


instance eventTargetActionEventTarget :: EventTarget EnchantActionEventTarget where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"
