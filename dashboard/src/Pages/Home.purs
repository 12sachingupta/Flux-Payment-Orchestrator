module Pages.Home where

import Prelude
import Halogen.HTML as HH

view :: HH.HTML Unit
view =
  HH.div_
    [ HH.p_ [ HH.text "This is the home page of the PureScript Frontend." ]
    ]
