module Enchant.Event where

import Control.Monad.Eff
import Enchant.Base


newEvent :: forall eff. String -> Eff (e :: Enchant | eff) EnchantEvent
newEvent = ffi ["type", ""] "new enchant.Event(type);"

aButtonDown :: forall eff. Eff (e :: Enchant | eff) String
aButtonDown = ffi [""] "enchant.Event.A_BUTTON_DOWN;"

aButtonUp :: forall eff. Eff (e :: Enchant | eff) String
aButtonUp = ffi [""] "enchant.Event.A_BUTTON_UP;"

actionAdded :: forall eff. Eff (e :: Enchant | eff) String
actionAdded = ffi [""] "enchant.Event.ACTION_ADDED;"

actionEnd :: forall eff. Eff (e :: Enchant | eff) String
actionEnd = ffi [""] "enchant.Event.ACTION_END;"

actionRemoved :: forall eff. Eff (e :: Enchant | eff) String
actionRemoved = ffi [""] "enchant.Event.ACTION_REMOVED;"

actionStart :: forall eff. Eff (e :: Enchant | eff) String
actionStart = ffi [""] "enchant.Event.ACTION_START;"

actionTick :: forall eff. Eff (e :: Enchant | eff) String
actionTick = ffi [""] "enchant.Event.ACTION_TICK;"

added :: forall eff. Eff (e :: Enchant | eff) String
added = ffi [""] "enchant.Event.ADDED;"

addedToScene :: forall eff. Eff (e :: Enchant | eff) String
addedToScene = ffi [""] "enchant.Event.ADDED_TO_SCENE;"

addedToTimeline :: forall eff. Eff (e :: Enchant | eff) String
addedToTimeline = ffi [""] "enchant.Event.ADDED_TO_TIMELINE;"

animationEnd :: forall eff. Eff (e :: Enchant | eff) String
animationEnd = ffi [""] "enchant.Event.ANIMATION_END;"

bButtonDown :: forall eff. Eff (e :: Enchant | eff) String
bButtonDown = ffi [""] "enchant.Event.B_BUTTON_DOWN;"

bButtonUp :: forall eff. Eff (e :: Enchant | eff) String
bButtonUp = ffi [""] "enchant.Event.B_BUTTON_UP;"

childAdded :: forall eff. Eff (e :: Enchant | eff) String
childAdded = ffi [""] "enchant.Event.CHILD_ADDED;"

childRemoved :: forall eff. Eff (e :: Enchant | eff) String
childRemoved = ffi [""] "enchant.Event.CHILD_REMOVED;"

coreResize :: forall eff. Eff (e :: Enchant | eff) String
coreResize = ffi [""] "enchant.Event.CORE_RESIZE;"

downButtonDown :: forall eff. Eff (e :: Enchant | eff) String
downButtonDown = ffi [""] "enchant.Event.DOWN_BUTTON_DOWN;"

downButtonUp :: forall eff. Eff (e :: Enchant | eff) String
downButtonUp = ffi [""] "enchant.Event.DOWN_BUTTON_UP;"

enter :: forall eff. Eff (e :: Enchant | eff) String
enter = ffi [""] "enchant.Event.ENTER;"

enterFrame :: forall eff. Eff (e :: Enchant | eff) String
enterFrame = ffi [""] "enchant.Event.ENTER_FRAME;"

-- error :: forall eff. Eff (e :: Enchant | eff) Unit
-- error = ffi [""] "enchant.Event.ERROR;"

exit :: forall eff. Eff (e :: Enchant | eff) String
exit = ffi [""] "enchant.Event.EXIT;"

exitFrame :: forall eff. Eff (e :: Enchant | eff) String
exitFrame = ffi [""] "enchant.Event.EXIT_FRAME;"

inputChange :: forall eff. Eff (e :: Enchant | eff) String
inputChange = ffi [""] "enchant.Event.INPUT_CHANGE;"

inputEnd :: forall eff. Eff (e :: Enchant | eff) String
inputEnd = ffi [""] "enchant.Event.INPUT_END;"

inputStart :: forall eff. Eff (e :: Enchant | eff) String
inputStart = ffi [""] "enchant.Event.INPUT_START;"

inputStateChanged :: forall eff. Eff (e :: Enchant | eff) String
inputStateChanged = ffi [""] "enchant.Event.INPUT_STATE_CHANGED;"

leftButtonDown :: forall eff. Eff (e :: Enchant | eff) String
leftButtonDown = ffi [""] "enchant.Event.LEFT_BUTTON_DOWN;"

leftButtonUp :: forall eff. Eff (e :: Enchant | eff) String
leftButtonUp = ffi [""] "enchant.Event.LEFT_BUTTON_UP;"

load :: forall eff. Eff (e :: Enchant | eff) String
load = ffi [""] "enchant.Event.LOAD;"

getLocalX :: forall eff. EnchantEvent -> Eff (e :: Enchant | eff) Number
getLocalX = ffi ["event", ""] "event.localX;"

setLocalX :: forall eff. EnchantEvent -> Number -> Eff (e :: Enchant | eff) Unit
setLocalX = fpi ["event", "x", ""] "event.localX = x;"

getLocalY :: forall eff. EnchantEvent -> Eff (e :: Enchant | eff) Number
getLocalY = ffi ["event", ""] "event.localY;"

setLocalY :: forall eff. EnchantEvent -> Number -> Eff (e :: Enchant | eff) Unit
setLocalY = fpi ["event", "y", ""] "event.localY = y;"

progress :: forall eff. Eff (e :: Enchant | eff) String
progress = ffi [""] "enchant.Event.PROGRESS;"

removed :: forall eff. Eff (e :: Enchant | eff) String
removed = ffi [""] "enchant.Event.REMOVED;"

removedFromScene :: forall eff. Eff (e :: Enchant | eff) String
removedFromScene = ffi [""] "enchant.Event.REMOVED_FROM_SCENE;"

removedFromTimeline :: forall eff. Eff (e :: Enchant | eff) String
removedFromTimeline = ffi [""] "enchant.Event.REMOVED_FROM_TIMELINE;"

render :: forall eff. Eff (e :: Enchant | eff) String
render = ffi [""] "enchant.Event.RENDER;"

rightButtonDown :: forall eff. Eff (e :: Enchant | eff) String
rightButtonDown = ffi [""] "enchant.Event.RIGHT_BUTTON_DOWN;"

rightButtonUp :: forall eff. Eff (e :: Enchant | eff) String
rightButtonUp = ffi [""] "enchant.Event.RIGHT_BUTTON_UP;"

getTarget :: forall eff. EnchantEvent -> Eff (e :: Enchant | eff) EnchantEventTarget
getTarget = ffi ["event", ""] "event.target;"

setTarget :: forall eff. EnchantEvent -> EnchantEventTarget -> Eff (e :: Enchant | eff) Unit
setTarget = ffi ["event", "target", ""] "event.target = target;"

touchEnd :: forall eff. Eff (e :: Enchant | eff) String
touchEnd = ffi [""] "enchant.Event.TOUCH_END;"

touchMove :: forall eff. Eff (e :: Enchant | eff) String
touchMove = ffi [""] "enchant.Event.TOUCH_MOVE;"

touchStart :: forall eff. Eff (e :: Enchant | eff) String
touchStart = ffi [""] "enchant.Event.TOUCH_START;"

getType :: forall eff. EnchantEvent -> Eff (e :: Enchant | eff) String
getType = ffi ["event", ""] "event.type;"

setType :: forall eff. EnchantEvent -> String -> Eff (e :: Enchant | eff) Unit
setType = ffi ["event", "type", ""] "event.type = type;"

upButtonDown :: forall eff. Eff (e :: Enchant | eff) String
upButtonDown = ffi [""] "enchant.Event.UP_BUTTON_DOWN;"

upButtonUp :: forall eff. Eff (e :: Enchant | eff) String
upButtonUp = ffi [""] "enchant.Event.UP_BUTTON_UP;"

getX :: forall eff. EnchantEvent -> Eff (e :: Enchant | eff) Number
getX = ffi ["event", ""] "event.x;"

setX :: forall eff. EnchantEvent -> Number -> Eff (e :: Enchant | eff) Unit
setX = fpi ["event", "x", ""] "event.x = x;"

getY :: forall eff. EnchantEvent -> Eff (e :: Enchant | eff) Number
getY = ffi ["event", ""] "event.y;"

setY :: forall eff. EnchantEvent -> Number -> Eff (e :: Enchant | eff) Unit
setY = fpi ["event", "y", ""] "event.y = y;"
