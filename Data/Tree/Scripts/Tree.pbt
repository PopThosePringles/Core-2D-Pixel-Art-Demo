Name: "Scripts"
RootId: 18080918101155496515
Objects {
  Id: 7186952321901438975
  Name: "Server Scripts"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18080918101155496515
  ChildIds: 3283058820331904752
  ChildIds: 7265480534962495277
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
    Type: Server
  }
}
Objects {
  Id: 7265480534962495277
  Name: "Death_Area"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7186952321901438975
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 1836351403364627194
    }
  }
}
Objects {
  Id: 3283058820331904752
  Name: "Player"
  Transform {
    Location {
      Z: 9
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7186952321901438975
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 6031698541829875849
    }
  }
}
Objects {
  Id: 16181477310825223401
  Name: "Client Scripts"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18080918101155496515
  ChildIds: 4507334226558207905
  ChildIds: 9544137968149923062
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
  }
}
Objects {
  Id: 9544137968149923062
  Name: "Camera_Dev_Placer"
  Transform {
    Location {
      Z: 9
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16181477310825223401
  UnregisteredParameters {
    Overrides {
      Name: "cs:camera"
      ObjectReference {
        SelfId: 14602974712451957530
      }
    }
    Overrides {
      Name: "cs:offset"
      Int: 250
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 6328695443434890896
    }
  }
}
Objects {
  Id: 4507334226558207905
  Name: "Player_Controller"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16181477310825223401
  UnregisteredParameters {
    Overrides {
      Name: "cs:Animator_2D"
      AssetReference {
        Id: 3672279438314875699
      }
    }
    Overrides {
      Name: "cs:offset_x"
      Int: 0
    }
    Overrides {
      Name: "cs:offset_y"
      Int: -110
    }
    Overrides {
      Name: "cs:offset_z"
      Int: -92
    }
    Overrides {
      Name: "cs:idle_right"
      ObjectReference {
        SelfId: 9000348678228558443
      }
    }
    Overrides {
      Name: "cs:idle_left"
      ObjectReference {
        SelfId: 4771024795991753140
      }
    }
    Overrides {
      Name: "cs:run_right"
      ObjectReference {
        SelfId: 12819103227776578093
      }
    }
    Overrides {
      Name: "cs:run_left"
      ObjectReference {
        SelfId: 9204237279851256599
      }
    }
    Overrides {
      Name: "cs:camera"
      ObjectReference {
        SelfId: 14602974712451957530
      }
    }
    Overrides {
      Name: "cs:punch_left"
      ObjectReference {
        SelfId: 1767046302749216211
      }
    }
    Overrides {
      Name: "cs:punch_right"
      ObjectReference {
        SelfId: 2670253350026341591
      }
    }
    Overrides {
      Name: "cs:peace"
      ObjectReference {
        SelfId: 18167215661640908571
      }
    }
    Overrides {
      Name: "cs:dead"
      ObjectReference {
        SelfId: 16497723157579014931
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 18139334950529314694
    }
  }
}
