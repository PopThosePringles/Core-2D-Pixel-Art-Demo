Name: "Level"
RootId: 1185215908356950378
Objects {
  Id: 7211320524802402159
  Name: "Cube"
  Transform {
    Location {
      X: 1694.95337
      Y: 0.00109863281
      Z: -175
    }
    Rotation {
    }
    Scale {
      X: 60.2000046
      Y: 7.50000238
      Z: 2.5
    }
  }
  ParentId: 1185215908356950378
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 2210085890040026600
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableDistanceFieldLighting: true
    DisableCastShadows: true
    DisableReceiveDecals: true
    EnableCameraCollision: true
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 5207040222511160451
  Name: "Trigger"
  Transform {
    Location {
      X: 1834.90222
      Y: -0.000854492188
      Z: -575
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 50.7
      Z: 12.9999971
    }
  }
  ParentId: 1185215908356950378
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Trigger {
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 15123005742453862009
  Name: "Water"
  Transform {
    Location {
      X: 5439.99951
      Y: 5
      Z: -810
    }
    Rotation {
      Pitch: 90
      Yaw: 14.0362635
      Roll: 104.03627
    }
    Scale {
      X: 16.9
      Y: 206.800095
      Z: 1
    }
  }
  ParentId: 1185215908356950378
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1609512377436
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.1412
        G: 0.6235
        B: 0.8706
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 1609512377434
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 15375183103933529124
  Name: "Art"
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
  ParentId: 1185215908356950378
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Art"
  }
}
