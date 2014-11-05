module Enchant.Event where

import Control.Monad.Eff
import Enchant.Base


newEvent :: forall eff. String -> Eff (e :: Enchant | eff) EnchantEvent
newEvent = ffi ["type", ""] "new enchant.Event(type);"

aButtonDown :: String
aButtonDown = ffi [""] "enchant.Event.A_BUTTON_DOWN;"

aButtonUp :: String
aButtonUp = ffi [""] "enchant.Event.A_BUTTON_UP;"

actionAdded :: String
actionAdded = ffi [""] "enchant.Event.ACTION_ADDED;"

actionEnd :: String
actionEnd = ffi [""] "enchant.Event.ACTION_END;"

actionRemoved :: String
actionRemoved = ffi [""] "enchant.Event.ACTION_REMOVED;"

actionStart :: String
actionStart = ffi [""] "enchant.Event.ACTION_START;"

actionTick :: String
actionTick = ffi [""] "enchant.Event.ACTION_TICK;"

added :: String
added = ffi [""] "enchant.Event.ADDED;"

addedToScene :: String
addedToScene = ffi [""] "enchant.Event.ADDED_TO_SCENE;"

addedToTimeline :: String
addedToTimeline = ffi [""] "enchant.Event.ADDED_TO_TIMELINE;"

animationEnd :: String
animationEnd = ffi [""] "enchant.Event.ANIMATION_END;"

bButtonDown :: String
bButtonDown = ffi [""] "enchant.Event.B_BUTTON_DOWN;"

bButtonUp :: String
bButtonUp = ffi [""] "enchant.Event.B_BUTTON_UP;"

childAdded :: String
childAdded = ffi [""] "enchant.Event.CHILD_ADDED;"

childRemoved :: String
childRemoved = ffi [""] "enchant.Event.CHILD_REMOVED;"

coreResize :: String
coreResize = ffi [""] "enchant.Event.CORE_RESIZE;"

downButtonDown :: String
downButtonDown = ffi [""] "enchant.Event.DOWN_BUTTON_DOWN;"

downButtonUp :: String
downButtonUp = ffi [""] "enchant.Event.DOWN_BUTTON_UP;"

enter :: String
enter = ffi [""] "enchant.Event.ENTER;"

enterFrame :: String
enterFrame = ffi [""] "enchant.Event.ENTER_FRAME;"

-- error :: forall eff. Eff (e :: Enchant | eff) Unit
-- error = ffi [""] "enchant.Event.ERROR;"

exit :: String
exit = ffi [""] "enchant.Event.EXIT;"

exitFrame :: String
exitFrame = ffi [""] "enchant.Event.EXIT_FRAME;"

inputChange :: String
inputChange = ffi [""] "enchant.Event.INPUT_CHANGE;"

inputEnd :: String
inputEnd = ffi [""] "enchant.Event.INPUT_END;"

inputStart :: String
inputStart = ffi [""] "enchant.Event.INPUT_START;"

inputStateChanged :: String
inputStateChanged = ffi [""] "enchant.Event.INPUT_STATE_CHANGED;"

leftButtonDown :: String
leftButtonDown = ffi [""] "enchant.Event.LEFT_BUTTON_DOWN;"

leftButtonUp :: String
leftButtonUp = ffi [""] "enchant.Event.LEFT_BUTTON_UP;"

load :: String
load = ffi [""] "enchant.Event.LOAD;"

getLocalX :: EnchantEvent -> Number
getLocalX = ffi ["event", ""] "event.localX;"

setLocalX :: forall eff. EnchantEvent -> Number -> Eff (e :: Enchant | eff) Unit
setLocalX = fpi ["event", "x", ""] "event.localX = x;"

getLocalY :: EnchantEvent -> Number
getLocalY = ffi ["event", ""] "event.localY;"

setLocalY :: forall eff. EnchantEvent -> Number -> Eff (e :: Enchant | eff) Unit
setLocalY = fpi ["event", "y", ""] "event.localY = y;"

progress :: String
progress = ffi [""] "enchant.Event.PROGRESS;"

removed :: String
removed = ffi [""] "enchant.Event.REMOVED;"

removedFromScene :: String
removedFromScene = ffi [""] "enchant.Event.REMOVED_FROM_SCENE;"

removedFromTimeline :: String
removedFromTimeline = ffi [""] "enchant.Event.REMOVED_FROM_TIMELINE;"

render :: String
render = ffi [""] "enchant.Event.RENDER;"

rightButtonDown :: String
rightButtonDown = ffi [""] "enchant.Event.RIGHT_BUTTON_DOWN;"

rightButtonUp :: String
rightButtonUp = ffi [""] "enchant.Event.RIGHT_BUTTON_UP;"

getTarget :: EnchantEvent -> EnchantEventTarget
getTarget = ffi ["event", ""] "event.target;"

setTarget :: forall eff. EnchantEvent -> EnchantEventTarget -> Eff (e :: Enchant | eff) Unit
setTarget = ffi ["event", "target", ""] "event.target = target;"

touchEnd :: String
touchEnd = ffi [""] "enchant.Event.TOUCH_END;"

touchMove :: String
touchMove = ffi [""] "enchant.Event.TOUCH_MOVE;"

touchStart :: String
touchStart = ffi [""] "enchant.Event.TOUCH_START;"

getType :: EnchantEvent -> String
getType = ffi ["event", ""] "event.type;"

setType :: forall eff. EnchantEvent -> String -> Eff (e :: Enchant | eff) Unit
setType = ffi ["event", "type", ""] "event.type = type;"

upButtonDown :: String
upButtonDown = ffi [""] "enchant.Event.UP_BUTTON_DOWN;"

upButtonUp :: String
upButtonUp = ffi [""] "enchant.Event.UP_BUTTON_UP;"

getX :: EnchantEvent -> Number
getX = ffi ["event", ""] "event.x;"

setX :: forall eff. EnchantEvent -> Number -> Eff (e :: Enchant | eff) Unit
setX = fpi ["event", "x", ""] "event.x = x;"

getY :: EnchantEvent -> Number
getY = ffi ["event", ""] "event.y;"

setY :: forall eff. EnchantEvent -> Number -> Eff (e :: Enchant | eff) Unit
setY = fpi ["event", "y", ""] "event.y = y;"
