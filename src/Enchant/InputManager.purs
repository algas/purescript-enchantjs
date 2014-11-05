module Enchant.InputManager where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)


newInputManager :: forall eff. EnchantValueStore -> Eff (e :: Enchant | eff) EnchantInputManager
newInputManager = ffi ["valueStore", ""] "new enchant.InputManager(valueStore);"

newInputManagerWithSource :: forall eff. EnchantValueStore -> EnchantSource -> Eff (e :: Enchant | eff) EnchantInputManager
newInputManagerWithSource = ffi ["valueStore", "source", ""] "new enchant.InputManager(valueStore, source);"

bind :: forall eff. EnchantInputManager -> EnchantInputSource -> String -> Eff (e :: Enchant | eff) Unit
bind = fpi ["base", "inputSource", "name", ""] "base.bind(inputSource, name);"

changeState :: forall eff. EnchantInputManager -> String -> EnchantData -> Eff (e :: Enchant | eff) Unit
changeState = fpi ["base", "name", "data", ""] "base.changeState(name, data);"

unbind :: forall eff. EnchantInputManager -> EnchantInputSource -> Eff (e :: Enchant | eff) Unit
unbind = fpi ["base", "inputSource", ""] "base.unbind(inputSource);"


class InputManager a where
    getBroadcastTarget :: a -> String -> EnchantEventTarget
    setBroadcastTarget :: forall eff. a -> String -> EnchantEventTarget -> Eff (e :: Enchant | eff) Unit
    getBroadcastTargets :: a -> [EnchantEventTarget]
    setBroadcastTargets :: forall eff. a -> [EnchantEventTarget] -> Eff (e :: Enchant | eff) Unit
    getSource :: a -> EnchantSource
    setSource :: forall eff. a -> EnchantSource -> Eff (e :: Enchant | eff) Unit
    getValueStore :: a -> EnchantValueStore
    setValueStore :: forall eff. a -> EnchantValueStore -> Eff (e :: Enchant | eff) Unit

    addBroadcastTarget :: forall eff. a -> EnchantEventTarget -> Eff (e :: Enchant | eff) Unit
    broadcastEvent :: forall eff. a -> EnchantEvent -> Eff (e :: Enchant | eff) Unit
    removeBroadcastTarget :: forall eff. a -> EnchantEventTarget -> Eff (e :: Enchant | eff) Unit


instance inputManagerSelf :: InputManager EnchantInputManager where
    getBroadcastTarget = ffi ["base", "name", ""] "base.broadcastTarget[name];"
    setBroadcastTarget = fpi ["base", "name", "target", ""] "base.broadcastTarget[name] = target;"
    getBroadcastTargets = ffi ["base", ""] "base.broadcastTarget;"
    setBroadcastTargets = fpi ["base", "targets", ""] "base.broadcastTarget = targets;"
    getSource = ffi ["base", ""] "base.source;"
    setSource = fpi ["base", "source", ""] "base.source = source;"
    getValueStore = ffi ["base", ""] "base.valueStore;"
    setValueStore = fpi ["base", "valueStore", ""] "base.valueStore = valueStore;"

    addBroadcastTarget = fpi ["base", "eventTarget", ""] "base.addBroadcastTarget(eventTarget);"
    broadcastEvent = fpi ["base", "event", ""] "base.broadcastEvent(event);"
    removeBroadcastTarget = fpi ["base", "eventTarget", ""] "base.removeBroadcastTarget(eventTarget, name);"


instance eventTargetInputManager :: EventTarget EnchantInputManager where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"
