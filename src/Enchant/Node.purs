module Enchant.Node where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)


newNode :: forall eff. Eff (e :: Enchant | eff) EnchantNode
newNode = ffi [""] "new enchant.Node();"


class Node a where
    getAge :: forall eff. a -> Eff (e :: Enchant | eff) Number
    setAge :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getParentNode :: forall eff. a -> Eff (e :: Enchant | eff) EnchantGroup
    getScene :: forall eff. a -> Eff (e :: Enchant | eff) EnchantScene
    getX :: forall eff. a -> Eff (e :: Enchant | eff) Number
    setX :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getY :: forall eff. a -> Eff (e :: Enchant | eff) Number
    setY :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit

    moveBy :: forall eff. a -> Number -> Number -> Eff (e :: Enchant | eff) Unit
    moveTo :: forall eff. a -> Number -> Number -> Eff (e :: Enchant | eff) Unit


instance nodeSelf :: Node EnchantScene where
    getAge = ffi ["base", ""] "base.age;"
    setAge = fpi ["base", "age", ""] "base.age = age;"
    getParentNode = ffi ["base", ""] "base.parentNode;"
    getScene = ffi ["base", ""] "base.base;"
    getX = ffi ["base", ""] "base.age;"
    setX = fpi ["base", "x", ""] "base.x = x;"
    getY = ffi ["base", ""] "base.age;"
    setY = fpi ["base", "y", ""] "base.y = y;"
    moveBy = fpi ["base", "x", "y", ""] "base.moveBy(x, y);"
    moveTo = fpi ["base", "x", "y", ""] "base.moveTo(x, y);"


instance eventTargetNode :: EventTarget EnchantNode where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"
