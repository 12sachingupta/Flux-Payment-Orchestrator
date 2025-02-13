module Components.App where

import Prelude
import Halogen as H
import Halogen.HTML as HH
import Pages.Home as Home

app :: H.Component Unit Unit Unit
app =
  H.mkComponent
    { initialState: const unit
    , render: \_ -> view
    , eval: H.mkEval $ \_ -> pure unit
    }

view :: HH.HTML Unit
view =
  HH.div_
    [ HH.h1_ [ HH.text "Welcome to the PureScript Dashboard" ]
    , Home.view
    ]
