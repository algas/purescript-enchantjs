module Enchant.Timeline where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)


newTimeline :: forall eff. EnchantNode -> Eff (e :: Enchant | eff) EnchantTimeline
newTimeline = ffi ["node"] "new enchant.Timeline(node);"


class Timeline a where
    action :: forall eff. a -> EnchantParam -> Eff (e :: Enchant | eff) EnchantTimeline
    add :: forall eff. a -> EnchantAction -> Eff (e :: Enchant | eff) EnchantTimeline
    and :: forall eff. a -> Eff (e :: Enchant | eff) EnchantTimeline
    clear :: forall eff. a -> Eff (e :: Enchant | eff) EnchantTimeline
    -- cue :: forall eff. a -> Eff (e :: Enchant | eff) EnchantTimeline
    delay :: forall eff. a -> Number -> Eff (e :: Enchant | eff) EnchantTimeline
    exec :: forall eff. a -> Eff (e :: Enchant | eff) Unit -> Eff (e :: Enchant | eff) EnchantTimeline
    fadeIn :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit -> Eff (e :: Enchant | eff) EnchantTimeline
    fadeOut :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit -> Eff (e :: Enchant | eff) EnchantTimeline
    fadeTo :: forall eff. a -> Number -> Number -> Eff (e :: Enchant | eff) Unit -> Eff (e :: Enchant | eff) EnchantTimeline
    hide :: forall eff. a -> Eff (e :: Enchant | eff) EnchantTimeline
    loop :: forall eff. a -> Eff (e :: Enchant | eff) EnchantTimeline
    moveBy :: forall eff. a -> Number -> Number -> Number -> Eff (e :: Enchant | eff) EnchantTimeline
    moveTo :: forall eff. a -> Number -> Number -> Number -> Eff (e :: Enchant | eff) EnchantTimeline
    moveX :: forall eff. a -> Number -> Number -> Eff (e :: Enchant | eff) EnchantTimeline
    moveY :: forall eff. a -> Number -> Number -> Eff (e :: Enchant | eff) EnchantTimeline
    next :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    pause :: forall eff. a -> Eff (e :: Enchant | eff) EnchantTimeline
    removeFromScene :: forall eff. a -> Eff (e :: Enchant | eff) EnchantTimeline
    repeat :: forall eff. a -> Eff (e :: Enchant | eff) Unit -> Number -> Eff (e :: Enchant | eff) EnchantTimeline
    resume :: forall eff. a -> Eff (e :: Enchant | eff) EnchantTimeline
    rotateBy :: forall eff. a -> Number -> Number -> Eff (e :: Enchant | eff) EnchantTimeline
    rotateTo :: forall eff. a -> Number -> Number -> Eff (e :: Enchant | eff) EnchantTimeline
    scaleBy :: forall eff. a -> Number -> Number -> Number -> Eff (e :: Enchant | eff) EnchantTimeline
    scaleTo :: forall eff. a -> Number -> Number -> Number -> Eff (e :: Enchant | eff) EnchantTimeline
    setFrameBased :: forall eff. a -> Eff (e :: Enchant | eff) Unit
    setTimeBased :: forall eff. a -> Eff (e :: Enchant | eff) Unit
    skip :: forall eff. a -> Number -> Eff (e :: Enchant | eff) EnchantTimeline
    then_ :: forall eff. a -> Eff (e :: Enchant | eff) Unit -> Eff (e :: Enchant | eff) EnchantTimeline
    tick :: forall eff. a -> EnchantEvent -> Eff (e :: Enchant | eff) Unit
    tween :: forall eff. a -> EnchantParam -> Eff (e :: Enchant | eff) EnchantTimeline
    unloop :: forall eff. a -> Eff (e :: Enchant | eff) EnchantTimeline
    waitUntil :: forall eff. a -> Eff (e :: Enchant | eff) Unit -> Eff (e :: Enchant | eff) EnchantTimeline


instance timelineSelf :: Timeline EnchantTimeline where
    action = ffi ["base", "param", ""] "base.action(param);"
    add = ffi ["base", "action", ""] "base.add(action);"
    and = ffi ["base", ""] "base.and();"
    clear = ffi ["base", ""] "base.clear();"
    -- cue = ffi ["base", "cue", ""] "base.cue(cue);"
    delay = ffi ["base", "time", ""] "base.delay(time);"
    exec = ffi ["base", "func", ""] "base.exec(func);"
    fadeIn = ffi ["base", "time", ""] "base.fadeIn(time);"
    fadeOut = ffi ["base", "time", ""] "base.fadeOut(time);"
    fadeTo = ffi ["base", "opacity", "time", ""] "base.fadeTo(opacity, time);"
    hide = ffi ["base", ""] "base.hide();"
    loop = ffi ["base", ""] "base.loop();"
    moveBy = ffi ["base", "x", "y", "time", ""] "base.moveBy(x, y, time);"
    moveTo = ffi ["base", "x", "y", "time", ""] "base.moveTo(x, y, time);"
    moveX = ffi ["base", "x", "time", ""] "base.moveX(x, time);"
    moveY = ffi ["base", "y", "time", ""] "base.moveY(y, time);"
    next = fpi ["base", "remainingTime", ""] "base.next(remainingTime);"
    pause = ffi ["base", ""] "base.pause();"
    removeFromScene = ffi ["base", ""] "base.removeFromScene();"
    repeat = ffi ["base", "func", "time", ""] "base.repeat(func, time);"
    resume = ffi ["base", ""] "base.resume();"
    rotateBy = ffi ["base", "deg", "time", ""] "base.rotateBy(deg, time);"
    rotateTo = ffi ["base", "deg", "time", ""] "base.rotateTo(deg, time);"
    scaleBy = ffi ["base", "x", "y", "time", ""] "base.scaleBy(x, y, time);"
    scaleTo = ffi ["base", "x", "y", "time", ""] "base.scaleTo(x, y, time);"
    setFrameBased = fpi ["base", ""] "base.setFrameBased();"
    setTimeBased = fpi ["base", ""] "base.setTimeBased();"
    skip = ffi ["base", "frames", ""] "base.skip(frames);"
    then_ = ffi ["base", "func", ""] "base.then_(func);"
    tick = fpi ["base", "event", ""] "base.tick(event);"
    tween = ffi ["base", "param", ""] "base.tween(param);"
    unloop = ffi ["base", ""] "base.unloop();"
    waitUntil = ffi ["base", "func", ""] "base.waitUntil(func);"


instance showTimeline :: Show EnchantTimeline where
    show = ffi ["base", ""] "base.show();"


instance eventTargetTimeline :: EventTarget EnchantTimeline where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"
