module Enchant.Class where

import Control.Monad.Eff
import Enchant.Base


newClass :: forall eff. Unit ->  Eff (e :: Enchant | eff) EnchantClass
newClass = ffi ["superclass", ""] "new enchant.Class(superclass);"

newClassWithDef :: forall eff. Unit -> EnchantClassDefinition -> Eff (e :: Enchant | eff) EnchantClass
newClassWithDef = ffi ["superclass", "definition"] "new enchant.Class(superclass, definition);"


create :: forall eff. Unit ->  Eff (e :: Enchant | eff) EnchantClass
create = ffi ["superclass", ""] "enchant.Class.create(superclass);"

createWithDef :: forall eff. Unit -> EnchantClassDefinition -> Eff (e :: Enchant | eff) EnchantClass
createWithDef = ffi ["superclass", "definition"] "enchant.Class.create(superclass, definition);"

getInheritanceTree :: forall eff. Eff (e :: Enchant | eff) Unit
getInheritanceTree = ffi [""] "enchant.Class.getInheritanceTree();"
