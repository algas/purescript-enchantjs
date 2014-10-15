module Enchant.Action where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)


newAction :: forall eff. EnchantParam -> Eff (e :: Enchant | eff) EnchantAction
newAction = ffi ["param", ""] "new enchant.Action(param);"


instance eventTargetAction :: EventTarget EnchantAction where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"
