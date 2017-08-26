module Ui.HomePage exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Messages exposing (Msg(..))
import Model exposing (Model)
import Routing as R


view : Model -> Html Msg
view model =
    div [] []
