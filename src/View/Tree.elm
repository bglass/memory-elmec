module View.Tree exposing (frame)

import Html exposing (..)
import Html.Attributes exposing (..)

import Treeview as T
import Data.TreeDummy1 exposing (styles, tree_dummy_1)

import Model  exposing (..)

config : T.Config
config = T.default styles


frame =
  div []
    [ T.view config tree_dummy_1]
