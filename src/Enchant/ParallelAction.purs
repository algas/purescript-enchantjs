module Enchant.ParallelAction where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)


newParallelAction :: forall eff. Eff (e :: Enchant | eff) EnchantParallelAction
newParallelAction = ffi [""] "new enchant.ParallelAction();"


class ParallelAction a where
    getActions :: forall eff. a -> Eff (e :: Enchant | eff) [EnchantAction]
    setActions :: forall eff. a -> [EnchantAction] -> Eff (e :: Enchant | eff) Unit
    getEndedActions :: forall eff. a -> Eff (e :: Enchant | eff) [EnchantAction]
    setEndedActions :: forall eff. a -> [EnchantAction] -> Eff (e :: Enchant | eff) Unit


instance parallelActionSelf :: ParallelAction EnchantParallelAction where
    getActions = ffi ["base", ""] "base.actions;"
    setActions = fpi ["base", "actions", ""] "base.actions = actions;"
    getEndedActions = ffi ["base", ""] "base.endedActions;"
    setEndedActions = fpi ["base", "actions", ""] "base.endedActions = actions;"


instance eventTargetParallelAction :: EventTarget EnchantParallelAction where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"

