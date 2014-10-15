module Enchant.Label where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)
import Enchant.Node (Node)
import Enchant.Entity (Entity)


newLabel :: forall eff. Eff (e :: Enchant | eff) EnchantLabel
newLabel = ffi [""] "new enchant.Label();"


instance nodeLabel :: Node EnchantLabel where
    getAge = ffi ["base", ""] "base.age;"
    setAge = fpi ["base", "age", ""] "base.age = age;"
    getParentNode = ffi ["base", ""] "base.parentNode;"
    getScene = ffi ["base", ""] "base.scene;"
    getX = ffi ["base", ""] "base.x;"
    setX = fpi ["base", "x", ""] "base.x = x;"
    getY = ffi ["base", ""] "base.y;"
    setY = fpi ["base", "y", ""] "base.y = y;"

    moveBy = fpi ["base", "x", "y", ""] "base.moveBy(x, y);"
    moveTo = fpi ["base", "x", "y", ""] "base.moveTo(x, y);"


instance eventTargetLabel :: EventTarget EnchantLabel where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"


instance entityLabel :: Entity EnchantLabel where
    getBackgroundColor = ffi ["base", ""] "base.backgroundColor;"
    setBackgroundColor = fpi ["base", "backgroundColor", ""] "base.backgroundColor = backgroundColor;"
    getButtonMode = ffi ["base", ""] "base.buttonMode;"
    setButtonMode = fpi ["base", "buttonMode", ""] "base.buttonMode = buttonMode;"
    getButtonPressed = ffi ["base", ""] "base.buttonPressed;"
    setButtonPressed = fpi ["base", "buttonPressed", ""] "base.buttonPressed = buttonPressed;"
    getCompositeOperation = ffi ["base", ""] "base.compositeOperation;"
    setCompositeOperation = fpi ["base", "compositeOperation", ""] "base.compositeOperation = compositeOperation;"
    getDebugColor = ffi ["base", ""] "base.debugColor;"
    setDebugColor = fpi ["base", "debugColor", ""] "base.debugColor = debugColor;"
    getHeight = ffi ["base", ""] "base.height;"
    setHeight = fpi ["base", "height", ""] "base.height = height;"
    getOpacity = ffi ["base", ""] "base.opacity;"
    setOpacity = fpi ["base", "opacity", ""] "base.opacity = opacity;"
    getOriginX = ffi ["base", ""] "base.originX;"
    setOriginX = fpi ["base", "originX", ""] "base.originX = originX;"
    getOriginY = ffi ["base", ""] "base.originY;"
    setOriginY = fpi ["base", "originY", ""] "base.originY = originY;"
    getRotation = ffi ["base", ""] "base.rotation;"
    setRotation = fpi ["base", "rotation", ""] "base.rotation = rotation;"
    getScaleX = ffi ["base", ""] "base.scaleX;"
    setScaleX = fpi ["base", "scaleX", ""] "base.scaleX = scaleX;"
    getScaleY = ffi ["base", ""] "base.scaleY;"
    setScaleY = fpi ["base", "scaleY", ""] "base.scaleY = scaleY;"
    getTouchEnabled = ffi ["base", ""] "base.touchEnabled;"
    setTouchEnabled = fpi ["base", "touchEnabled", ""] "base.touchEnabled = touchEnabled;"
    getVisible = ffi ["base", ""] "base.visible;"
    setVisible = fpi ["base", "visible", ""] "base.visible = visible;"
    getWidth = ffi ["base", ""] "base.width;"
    setWidth = fpi ["base", "width", ""] "base.width = width;"

    disableCollection = fpi ["base", ""] "base.disableCollection();"
    enableCollection = fpi ["base", ""] "base.disableCollection();"
    intersect = ffi ["base", "other", ""] "base.intersect(other);"
    rotate = fpi ["base", "deg", ""] "base.rotate(deg);"
    scale = fpi ["base", "x", "y", ""] "base.scale(x, y);"
    within = ffi ["base", "other", ""] "base.within(other);"
