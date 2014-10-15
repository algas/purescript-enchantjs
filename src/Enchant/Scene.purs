module Enchant.Scene where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)
import Enchant.Group (Group)
import Enchant.Node (Node)


newScene :: forall eff. Eff (e :: Enchant | eff) EnchantScene
newScene = ffi [""] "new enchant.Scene();"


instance groupScene :: Group EnchantScene where
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


instance eventTargetScene :: EventTarget EnchantScene where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"


instance nodeScene :: Node EnchantScene where
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
