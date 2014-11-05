module Enchant.Group where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)
import Enchant.Node (Node)


newGroup :: forall eff. Eff (e :: Enchant | eff) EnchantGroup
newGroup = ffi [""] "new enchant.Group();"


class Group a where
    getChildNodes :: forall n. (Node n) => a -> [n]
    getFirstChild :: forall n. (Node n) => a -> n
    getLastChild :: forall n. (Node n) => a -> n
    getOriginX :: a -> Number
    setOriginX :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getOriginY :: a -> Number
    setOriginY :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getRotation :: a -> Number
    setRotation :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getScaleX :: a -> Number
    setScaleX :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getScaleY :: a -> Number
    setScaleY :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    addChild :: forall eff n. (Node n) => a -> n -> Eff (e :: Enchant | eff) Unit
    insertBefore :: forall eff n. (Node n) => a -> n -> n -> Eff (e :: Enchant | eff) Unit
    removeChild :: forall eff n. (Node n) => a -> n -> Eff (e :: Enchant | eff) Unit


instance groupSelf :: Group EnchantGroup where
    getChildNodes = ffi ["base", ""] "base.childeNodes;"
    getFirstChild = ffi ["base", ""] "base.firstChild;"
    getLastChild = ffi ["base", ""] "base.lastChild;"
    getOriginX = ffi ["base", ""] "base.originX;"
    setOriginX = fpi ["base", "x", ""] "base.originX = x;"
    getOriginY = ffi ["base", ""] "base.originY;"
    setOriginY = fpi ["base", "y", ""] "base.originY = y;"
    getRotation = ffi ["base", ""] "base.rotation;"
    setRotation = fpi ["base", "deg", ""] "base.rotation = deg;"
    getScaleX = ffi ["base", ""] "base.scaleX;"
    setScaleX = fpi ["base", "x", ""] "base.scaleX = x;"
    getScaleY = ffi ["base", ""] "base.scaleY;"
    setScaleY = fpi ["base", "y", ""] "base.scaleY = y;"
    addChild = fpi ["base", "node", ""] "base.addChild(node);"
    insertBefore = fpi ["base", "node", "reference", ""] "base.insertBefore(node, reference);"
    removeChild = fpi ["base", "node", ""] "base.removeChild(node);"


instance eventTargetGroup :: EventTarget EnchantGroup where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"

