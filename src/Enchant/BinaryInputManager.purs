module Enchant.BinaryInputManager where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)
import Enchant.InputManager (InputManager)


newBinaryInputManager :: forall eff. EnchantValueStore -> String -> String -> Eff (e :: Enchant | eff) EnchantBinaryInputManager
newBinaryInputManager = ffi ["flagStore", "activeEventNameSuffix", "inactiveEventNameSuffix", ""] "new enchant.InputBinaryManager(flagStore, activeEventNameSuffix, inactiveEventNameSuffix);"

newBinaryInputManagerWithSource :: forall eff. EnchantValueStore -> String -> String -> EnchantSource -> Eff (e :: Enchant | eff) EnchantBinaryInputManager
newBinaryInputManagerWithSource = ffi ["flagStore", "activeEventNameSuffix", "inactiveEventNameSuffix", "source", ""] "new enchant.InputBinaryManager(flagStore, activeEventNameSuffix, inactiveEventNameSuffix, source);"

bind :: forall eff. EnchantBinaryInputManager -> EnchantBinaryInputSource -> String -> Eff (e :: Enchant | eff) Unit
bind = fpi ["base", "inputSource", "name", ""] "base.bind(inputSource, name);"

changeState :: forall eff. EnchantBinaryInputManager -> String -> Boolean -> Eff (e :: Enchant | eff) Unit
changeState = fpi ["base", "name", "bool", ""] "base.changeState(name, bool);"

unbind :: forall eff. EnchantBinaryInputManager -> EnchantBinaryInputSource -> Eff (e :: Enchant | eff) Unit
unbind = fpi ["base", "inputSource", ""] "base.unbind(inputSource);"


class BinaryInputManager a where
    getActiveEventNameSuffix :: forall eff. a -> Eff (e :: Enchant | eff) String
    setActiveEventNameSuffix :: forall eff. a -> String -> Eff (e :: Enchant | eff) Unit
    getActiveInputsNum :: forall eff. a -> Eff (e :: Enchant | eff) Number
    setActiveInputsNum :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getInactiveEventNameSuffix :: forall eff. a -> Eff (e :: Enchant | eff) String
    setInactiveEventNameSuffix :: forall eff. a -> String -> Eff (e :: Enchant | eff) Unit


instance binaryInputManagerSelf :: BinaryInputManager EnchantBinaryInputManager where
    getActiveEventNameSuffix = ffi ["base", ""] "base.activeEventNameSuffix;"
    setActiveEventNameSuffix = fpi ["base", "suffix", ""] "base.activeEventNameSuffix = suffix;"
    getActiveInputsNum = ffi ["base", ""] "base.activeInputsNum;"
    setActiveInputsNum = fpi ["base", "num", ""] "base.activeInputsNum = num;"
    getInactiveEventNameSuffix = ffi ["base", ""] "base.inactiveEventNameSuffix;"
    setInactiveEventNameSuffix = fpi ["base", "suffix", ""] "base.inactiveEventNameSuffix = suffix;"


instance inputManagerBinaryInputManager :: InputManager EnchantBinaryInputManager where
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


instance eventTargetBinaryInputManager :: EventTarget EnchantBinaryInputManager where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"

