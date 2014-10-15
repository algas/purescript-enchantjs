module Enchant.KeyboardInputManager where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)
import Enchant.InputManager (InputManager)
import Enchant.BinaryInputManager (BinaryInputManager)


newKeyboardInputManager :: forall eff. EnchantDom -> EnchantValueStore -> Eff (e :: Enchant | eff) EnchantInputManager
newKeyboardInputManager = ffi ["dom", "flagStore", ""] "new enchant.KeyboardInputManager(dom, flagStore);"

keybind :: forall eff. EnchantKeyboardInputManager -> Number -> String -> Eff (e :: Enchant | eff) Unit
keybind = fpi ["base", "keyCode", "name", ""] "base.bind(keyCode, name);"

keyunbind :: forall eff. EnchantKeyboardInputManager -> Number -> Eff (e :: Enchant | eff) Unit
keyunbind = fpi ["base", "keyCode", ""] "base.bind(keyCode, name);"


instance binaryInputManagerKeyboardInputManager :: BinaryInputManager EnchantKeyboardInputManager where
    getActiveEventNameSuffix = ffi ["base", ""] "base.activeEventNameSuffix;"
    setActiveEventNameSuffix = fpi ["base", "suffix", ""] "base.activeEventNameSuffix = suffix;"
    getActiveInputsNum = ffi ["base", ""] "base.activeInputsNum;"
    setActiveInputsNum = fpi ["base", "num", ""] "base.activeInputsNum = num;"
    getInactiveEventNameSuffix = ffi ["base", ""] "base.inactiveEventNameSuffix;"
    setInactiveEventNameSuffix = fpi ["base", "suffix", ""] "base.inactiveEventNameSuffix = suffix;"


instance inputManagerKeyboardInputManager :: InputManager EnchantKeyboardInputManager where
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


instance eventTargetKeyboardInputManager :: EventTarget EnchantKeyboardInputManager where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"

