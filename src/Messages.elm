module Messages exposing (Msg(..))

import Navigation exposing (Location)
import Time exposing (Time)


type Msg
    = NoOp
    | OnUpdateLocation Location
